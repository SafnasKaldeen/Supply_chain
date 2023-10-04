const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const mysql = require("mysql2");
const cors = require("cors");
const bcrypt = require("bcrypt");
const saltRounds = 10;

const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "supply_chain",
});

app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/schedule", (req, res) => {
  db.query("call supply_chain.Schedule_Orders();", (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

// app.post("/placeOrder", (req, res) => {
//   const customerID = req.body.customerID;
//   const routeID = req.body.routeID;
//   const date = new Date().toJSON().slice(0, 10);
//   db.query(
//     "call addOrder(?,?,?)",
//     [date, customerID, routeID],
//     (err, result) => {
//       if (err) {
//         console.log(err);
//       } else {
//         res.send(result[0]);
//       }
//     }
//   );
// });

// app.post("/addItem", (req, res) => {
//   const orderID = req.body.orderID;
//   const productID = req.body.productID;
//   const quantity = req.body.quantity;
//   db.query(
//     "insert into product_order (Product_ID,Order_ID,Quantity) value (?,?,?) ",
//     [productID, orderID, quantity],
//     (err, result) => {
//       if (err) {
//         console.log(err);
//       } else {
//         res.send({});
//       }
//     }
//   );
// });

async function addOrder(items, order) {
  const customerID = order.customerID;
  const routeID = order.routeID;
  const date = new Date().toJSON().slice(0, 10);
  let conn = null;
  let orderID = null;
  let days = null;
  conn = db.getConnection((err, conn) => {
    if (err) {
      console.log(err);
    } else {
      try {
        conn.beginTransaction();
        conn.query(
          "call addOrder(?,?,?)",
          [date, customerID, routeID],
          (err, result) => {
            orderID = result[0][0].orderID;
            for (const item of items) {
              const productID = item.Product_ID;
              const quantity = item.quantity;
              conn.query(
                "insert into product_order (Product_ID,Order_ID,Quantity) value (?,?,?) ",
                [productID, orderID, quantity]
              );
            }
            conn.query("call supply_chain.assignTrain(?);", [orderID]);
            conn.query(
              "call supply_chain.daysTodeliver(?);",
              [orderID],
              (err, result) => {
                days = result[0][0].Arrives_In;
                console.log(days);
              }
            );
          }
        );
        conn.commit();
        return days;
      } catch (err) {
        conn.rollback();
        console.log(err);
        throw err;
      } finally {
        conn.release();
      }
    }
  });
}

app.post("/addorder", (req, res) => {
  const items = req.body.items;
  const order = req.body.order;
  const days = addOrder(items, order);

  res.send(days);
});

app.post("/quaterly", (req, res) => {
  const year = req.body.year;
  const quater = req.body.quater;
  const sqlSelect = "call quarterlySales(?,?)";
  db.query(sqlSelect, [quater, year], (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

app.post("/routereport", (req, res) => {
  const year = req.body.year;
  const route = req.body.route;
  const sqlSelect = "call SalesAccordingToRoute(?,?)";
  db.query(sqlSelect, [year, route], (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

app.post("/cityreport", (req, res) => {
  const year = req.body.year;
  const city = req.body.city;
  const sqlSelect = "call SalesAccordingToCity(?,?)";
  db.query(sqlSelect, [year, city], (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

app.post("/mworkinghours", (req, res) => {
  const year = req.body.year;
  const type = req.body.type;
  const time = req.body.month;
  const sqlSelect = "call monthlyWorkingHours(?,?,?)";
  db.query(sqlSelect, [time, year, type], (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

app.post("/qworkinghours", (req, res) => {
  const year = req.body.year;
  const type = req.body.type;
  const time = req.body.quater;
  const sqlSelect = "call supply_chain.quarterlyWorkingHours(?,?,?)";
  db.query(sqlSelect, [time, year, type], (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send(result);
    }
  });
});

app.post("/register", (req, res) => {
  const username = req.body.username;
  const address = req.body.address;
  const usertype = req.body.usertype;
  const number = req.body.number;
  const password = req.body.password;

  db.query(
    "SELECT * FROM customer WHERE name = ?",
    [username],
    (err, result) => {
      if (err) {
        console.log(err);
        res.send(err);
      }
      if (result.length == 0) {
        bcrypt.hash(password, saltRounds, (err, hash) => {
          db.query(
            "INSERT INTO customer (Name, Customer_Type, Address, Contact_Number,Password) VALUE (?,?,?,?,?)",
            [username, usertype, address, number, hash],
            (error, response) => {
              if (error) {
                res.send(error);
                console.log(error);
              }

              res.send({ msg: "Customer successfully added" });
            }
          );
        });
      } else {
        res.send({ msg: "Username already exists" });
      }
    }
  );
});

app.get("/products", (req, res) => {
  db.query("SELECT * FROM product", (err, result) => {
    if (err) {
      res.send({ msg: "Error while accesing products" });
    } else {
      res.send(result);
    }
  });
});

app.post("/routes", (req, res) => {
  const storeid = req.body.Store_ID;
  db.query(
    "SELECT * FROM truck_route WHERE Store_ID = ?",
    [storeid],
    (err, result) => {
      if (err) {
        res.send({ msg: "Error while accesing routes" });
      } else {
        res.send(result);
      }
    }
  );
});
app.get("/allroutes", (req, res) => {
  db.query("SELECT Route_ID FROM truck_route", (err, result) => {
    if (err) {
      res.send({ msg: "Error while accesing routes" });
    } else {
      res.send(result);
    }
  });
});
app.get("/stores", (req, res) => {
  db.query("SELECT * FROM store", (err, result) => {
    if (err) {
      res.send({ msg: "Error while accesing stores" });
    } else {
      res.send(result);
    }
  });
});

app.get("/allstores", (req, res) => {
  db.query("SELECT Store_ID,City FROM store", (err, result) => {
    if (err) {
      res.send({ msg: "Error while accesing routes" });
    } else {
      res.send(result);
    }
  });
});

app.post("/checkadmin", (req, res) => {
  const username = req.body.username;
  const password = req.body.password;
  db.query(
    "SELECT * FROM admin WHERE Username = ?",
    [username],
    (err, result) => {
      if (err) {
        res.send({ msg: "login error" });
      } else if (result.length > 0) {
        bcrypt.compare(password, result[0].Password, (error, response) => {
          if (error) {
            res.send(error);
            console.log(error);
          } else {
            if (response) {
              res.send({ msg: "Admin logged in" });
            } else {
              res.send({ msg: "Wrong password" });
            }
          }
        });
      }
    }
  );
});

app.post("/checkuser", (req, res) => {
  const username = req.body.username;
  const password = req.body.password;
  db.query(
    "SELECT * FROM customer WHERE Name = ?",
    [username],
    (err, result) => {
      if (err) {
        res.send({ msg: "login error" });
      } else if (result.length > 0) {
        bcrypt.compare(password, result[0].Password, (error, response) => {
          if (error) {
            res.send(error);
            console.log(error);
          } else {
            if (response) {
              res.send({
                msg: "User logged in",
                customerID: result[0].Customer_ID,
              });
            } else {
              res.send({ msg: "Wrong password" });
            }
          }
        });
      }
    }
  );
});

app.listen(3001, () => {
  console.log("Server running on port 3001");
});
