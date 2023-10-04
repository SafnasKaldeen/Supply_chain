import { useState } from "react";
import "./styles.css";
import * as yup from "yup";
import { ErrorMessage, Formik, Form, Field } from "formik";
import Axios from "axios";
import { Navigate } from "react-router-dom";

function SignIn() {
  const [registered, setregistered] = useState(false);
  const handleRegister = (values) => {
    Axios.post("http://localhost:3001/register", {
      username: values.username,
      address: values.address,
      usertype: values.usertype,
      number: values.number,
      password: values.password,
    }).then((response) => {
      if (response.data.msg === "Customer successfully added") {
        setregistered(true);
      }
      alert(response.data.msg);
    });
  };

  const validationsRegister = yup.object().shape({
    username: yup.string().required("Username is required"),
    address: yup.string().required("Address is required"),
    usertype: yup.string().required(""),
    number: yup
      .string()
      .length(10, "Phone number must be 10 digits")
      .required("Contact number is required"),

    password: yup
      .string()
      .min(8, "Password must be at least 8 characters")
      .required("password is required"),
    confirmation: yup
      .string()
      .oneOf([yup.ref("password"), null], "Passwords must match")
      .required("Password confirmation is required"),
  });

  return (
    <div className="container">
      {registered && <Navigate to="/" />}
      <h1>Registration</h1>
      <Formik
        initialValues={{ usertype: "end customer" }}
        onSubmit={handleRegister}
        validationSchema={validationsRegister}
      >
        <Form className="register-form">
          <div className="register-form-group">
            <Field
              name="username"
              className="form-field"
              placeholder="Username"
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
              name="username"
              className="form-error"
              style={{ color: "red", margin: "7px 3px" }}
            />
          </div>
          <div className="register-form-group">
            <Field
              name="address"
              className="form-field"
              placeholder="Address"
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
              name="address"
              className="form-error"
              style={{ color: "red", margin: "7px 3px" }}
            />
          </div>
          <div className="register-form-group">
            <Field
              name="number"
              className="form-field"
              placeholder="Telephone Number"
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
              name="number"
              className="form-error"
              style={{ color: "red", margin: "7px 3px" }}
            />
          </div>
          <div className="register-form-group">
            <Field
              as="select"
              name="usertype"
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
            >
              <option value="wholesaler">Wholesaler</option>
              <option value="retailer">Retailer</option>
              <option value="end customer" selected>
                End Customer
              </option>
            </Field>
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

          <div className="form-group">
            <Field
              name="confirmation"
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
              name="confirmation"
              className="form-error"
              style={{ color: "red", margin: "7px 3px" }}
            />
          </div>

          <button className="button" type="submit">
            Register
          </button>
        </Form>
      </Formik>
    </div>
  );
}
export default SignIn;
