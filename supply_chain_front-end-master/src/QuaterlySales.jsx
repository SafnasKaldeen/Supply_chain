import { useState } from "react";
import Axios from "axios";
function QuaterlySales() {
  const [reportData, setReportData] = useState([]);
  const [quater, setquater] = useState("1");
  const [year, setyear] = useState("2022");
  const [fetched, setfetched] = useState(false);
  const fetchReport = () => {
    Axios.post("http://localhost:3001/quaterly", {
      quater: quater,
      year: year,
    }).then((response) => {
      setReportData(response.data[0]);
      setfetched(true);
      console.log(reportData);
    });
  };
  return (
    <div>
      <h4>Quaterly Sales Report</h4>
      <form>
        <div className="form-group row">
          <div class="col-md-4 mb-3">
            <label>
              Year:
              <select
                className="form-select  m-3"
                id="year"
                required
                onChange={(e) => setyear(e.target.value)}
              >
                <option value="2022">2022</option>
                <option value="2023">2023</option>
              </select>
            </label>
          </div>
          <div class="col-md-4 mb-3">
            <label>
              Quater:
              <select
                className="form-select m-3"
                id="quater"
                required
                onChange={(e) => setquater(e.target.value)}
              >
                <option value="1">First</option>
                <option value="2">Second</option>
                <option value="3">Third</option>
                <option value="4">Forth</option>
              </select>
            </label>
          </div>
        </div>
      </form>
      <button
        className="btn btn-success m-3"
        onClick={(e) => {
          fetchReport(e.target.value);
        }}
      >
        Generate Report
      </button>
      {fetched && (
        <table className="table table-bordered table-hover">
          <thead className="thead light">
            <tr>
              <th>Product ID</th>
              <th>Name</th>
              <th>Quantity</th>
              <th>Total Sales</th>
            </tr>
            {reportData.map((val, key) => {
              return (
                <tr key={key}>
                  <td>{val.Product_ID}</td>
                  <td>{val.Product_Name}</td>
                  <td>{val.Quantity}</td>
                  <td>{val.Total_Sales_Price}</td>
                </tr>
              );
            })}
          </thead>
        </table>
      )}
    </div>
  );
}
export default QuaterlySales;
