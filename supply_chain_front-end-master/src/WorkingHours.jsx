import { useState, useEffect } from "react";
import Axios from "axios";
function WorkingHours() {
  const [reportData, setReportData] = useState([]);
  const [time, settime] = useState("1");
  const [type, settype] = useState("d");
  const [format, setformat] = useState("m");
  const [year, setyear] = useState("2022");
  const [fetched, setfetched] = useState(false);
  const months = [
    { month: "January", value: 1 },
    { month: "February", value: 2 },
    { month: "March", value: 3 },
    { month: "April", value: 4 },
    { month: "May", value: 5 },
    { month: "June", value: 6 },
    { month: "July", value: 7 },
    { month: "August", value: 8 },
    { month: "September", value: 9 },
    { month: "October", value: 10 },
    { month: "November", value: 11 },
    { month: "December", value: 12 },
  ];
  const quarters = [
    { quarter: "Q1", value: 1 },
    { quarter: "Q2", value: 2 },
    { quarter: "Q3", value: 3 },
    { quarter: "Q4", value: 4 },
  ];
  useEffect(() => {
    setfetched(false);
  }, [time, year, type, format]);

  const fetchReport = () => {
    if (format === "m") {
      Axios.post("http://localhost:3001/mworkinghours", {
        month: time,
        type: type,
        year: year,
      }).then((response) => {
        setReportData(response.data[0]);
        setfetched(true);
        console.log(reportData);
      });
    } else {
      Axios.post("http://localhost:3001/qworkinghours", {
        quater: time,
        year: year,
        type: type,
      }).then((response) => {
        setReportData(response.data[0]);
        setfetched(true);
        console.log(reportData);
      });
    }
  };
  return (
    <div>
      <h4>Working Hours</h4>
      <form>
        <div className="form-group row">
          <div class="col">
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
          <div class="col">
            <label>
              Type:
              <select
                className="form-select m-3"
                id="type"
                required
                onChange={(e) => settype(e.target.value)}
              >
                <option value="d">Drivers</option>
                <option value="a">Driver assistants</option>
                <option value="t">Trucks</option>
              </select>
            </label>
          </div>
          <div class="col">
            <label>
              Time interval:
              <select
                className="form-select m-3"
                id="format"
                required
                onChange={(e) => setformat(e.target.value)}
              >
                <option value="m">Monthly</option>
                <option value="q">Quarterly</option>
              </select>
            </label>
          </div>
          <div class="col">
            <label>
              Time:
              <select
                className="form-select m-3"
                id="type"
                required
                onChange={(e) => settime(e.target.value)}
              >
                {format === "m" &&
                  months.map((val, key) => {
                    return <option value={val.value}>{val.month}</option>;
                  })}
                {format === "q" &&
                  quarters.map((val, key) => {
                    return <option value={val.value}>{val.quarter}</option>;
                  })}
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
      {fetched && type === "t" && (
        <table className="table table-bordered table-hover">
          <thead className="thead light">
            <tr>
              <th>Truck ID</th>
              <th>Working Hours</th>
            </tr>
            {reportData.map((val, key) => {
              return (
                <tr key={key}>
                  <td>{val.Truck_ID}</td>
                  <td>{val.Working_Hours}</td>
                </tr>
              );
            })}
          </thead>
        </table>
      )}
      {fetched && type === "d" && (
        <table className="table table-bordered table-hover">
          <thead className="thead light">
            <tr>
              <th>Driver ID</th>
              <th>Name</th>
              <th>Working Hours</th>
            </tr>
            {reportData.map((val, key) => {
              return (
                <tr key={key}>
                  <td>{val.Driver_ID}</td>
                  <td>{val.Name}</td>
                  <td>{val.Working_Hours}</td>
                </tr>
              );
            })}
          </thead>
        </table>
      )}
      {fetched && type === "a" && (
        <table className="table table-bordered table-hover">
          <thead className="thead light">
            <tr>
              <th>Driver assistant ID</th>
              <th>Name</th>
              <th>Working Hours</th>
            </tr>
            {reportData.map((val, key) => {
              return (
                <tr key={key}>
                  <td>{val.Asst_ID}</td>
                  <td>{val.Name}</td>
                  <td>{val.Working_Hours}</td>
                </tr>
              );
            })}
          </thead>
        </table>
      )}
    </div>
  );
}
export default WorkingHours;
