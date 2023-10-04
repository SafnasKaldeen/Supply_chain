import { useState } from "react";
import "./styles.css";
import * as yup from "yup";
import { ErrorMessage, Formik, Form, Field } from "formik";
import Axios from "axios";
import { Navigate, Link } from "react-router-dom";

function App() {
  const [isAdmin, setisAdmin] = useState(false);
  const [isUser, setisUser] = useState(false);
  const [currentUsername, setUsername] = useState();
  const [customerID, setcustomerID] = useState();
  const handleLogin = (values) => {
    setUsername(values.username);

    Axios.post("http://localhost:3001/checkadmin", {
      username: values.username,
      password: values.password,
    }).then((response) => {
      console.log(response);
      if (response.data.msg === "Admin logged in") {
        setisAdmin(true);
        console.log("Logged in as admin");
      }
    });
    if (!isAdmin) {
      Axios.post("http://localhost:3001/checkuser", {
        username: values.username,
        password: values.password,
      }).then((response) => {
        console.log(response);
        if (response.data.msg === "User logged in") {
          setcustomerID(response.data.customerID);
          setisUser(true);
          console.log("Logged in as user");
        } else {
          alert(response.data.msg);
        }
      });
    }
  };

  const validationsLogin = yup.object().shape({
    username: yup.string().required("Username is required"),
    password: yup
      .string()
      .min(8, "Password must be at least 8 characters")
      .required("Password is required"),
  });

  return (
    <div className="container">
      {isAdmin && (
        <Navigate to="/admin" state={{ username: currentUsername }} />
      )}
      {isUser && (
        <Navigate
          to="/order"
          state={{ username: currentUsername, customerID: customerID }}
        />
      )}
      <h1 style={{ color: "#197526", letterSpacing: "1px" }}>
        Wellcome to EasyExpress web portal
      </h1>
      <h1>Login</h1>
      <Formik
        initialValues={{}}
        onSubmit={handleLogin}
        validationSchema={validationsLogin}
      >
        <Form className="login-form">
          <div className="login-form-group">
            <Field
              name="username"
              className="form-field"
              placeholder="Username"
              style={{
                transition: "all 0.2s ease-in-out",
                borderRadius: "7px",
                font: "13px Helvetica, Arial, sans-serif",
                border: "3px solid #ccc",
                background: "#ffffff",
                margin: "3px",
                color: "rgb(0, 0, 0)",
                padding: "7px 3px",
                width: "250px",
              }}
            />

            <ErrorMessage
              component="span"
              name="username"
              className="form-error"
              style={{ color: "red", margin: "7px 3px" }}
            />
          </div>
          <div className="form-group">
            <Field
              name="password"
              className="form-field"
              type="password"
              placeholder="Password"
              style={{
                transition: "all 0.2s ease-in-out",
                borderRadius: "7px",
                font: "13px Helvetica, Arial, sans-serif",
                border: "3px solid #ccc",
                background: "#fff",
                margin: "3px",
                color: "rgb(0, 0, 0)",
                padding: "7px 3px",
                width: "250px",
              }}
            />

            <ErrorMessage
              component="span"
              name="password"
              className="form-error"
              style={{ color: "red", margin: "7px 3px" }}
            />
          </div>

          <button className="button" type="submit">
            Login
          </button>
        </Form>
      </Formik>
      <Link to="/signin">Register as a new customer</Link>
    </div>
  );
}

export default App;
