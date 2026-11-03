<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Bootstrap Table Example</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .table-custom {
      max-width: 600px;
      margin: 30px auto;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
    }
    .table-custom thead {
      background-color: #007bff;
      color: white;
      text-align: center;
    }
    .table-custom tbody td:first-child {
      font-weight: bold;
      color: #333;
    }
  </style>
</head>
<body>

  <div class="container">
  <h1>Search Result</h1>
    <table class="table table-bordered table-striped table-hover table-custom">
      
      <tbody>
        <tr>
          <td>Account Number</td>
          <td>${data.accno}</td>
        </tr>
        <tr>
          <td>Name</td>
          <td>${data.accnm}</td>
        </tr>
        <tr>
          <td>Type</td>
          <td>${data.acctype}</td>
        </tr>
        <tr>
          <td>Balance</td>
          <td>${data.balance}</td>
        </tr>
      </tbody>
    </table>
  </div>

</body>
</html>