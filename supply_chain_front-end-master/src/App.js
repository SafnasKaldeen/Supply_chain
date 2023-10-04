import AdminPage from "./AdminPage";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Login from "./Login";
import OrderPage from "./OrderPage";
import SignUp from "./SignUp";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/admin" element={<AdminPage />} />
        <Route path="/order" element={<OrderPage />} />
        <Route path="/signin" element={<SignUp />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
