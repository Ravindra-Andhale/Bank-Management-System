<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Accounts Report</title>
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />
  <style>
    body {
      background: linear-gradient(to right, #f1f1f1, #e0f7fa);
      padding: 20px;
    }
    .report-container {
      background-color: #ffffff;
      border-radius: 15px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      padding: 30px;
    }
    .table thead {
      background-color: #007bff;
      color: white;
    }
    .time-date {
      font-size: 1rem;
      font-weight: 500;
      color: #555;
    }
    .btn-home {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div class="container report-container">
    <h2 class="text-center text-primary mb-4">Accounts Report</h2>

    <p class="text-end time-date" id="datetime"></p>

    <div class="table-responsive">
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <th>Account Number</th>
            <th>Name</th>
            <th>Type</th>
            <th>Balance</th>
          </tr>
        </thead>
        <tbody>
         
         <c:forEach items="${acclist}" var="ac">
          <tr>
            <td>${ac.accno}</td>
            <td>${ac.accnm}</td>
            <td>${ac.acctype}</td>
            <td>₹ ${ac.balance}</td>
          </tr>
          </c:forEach>
          
        </tbody>
      </table>
    </div>



    <div class="text-center btn-home">
      <a href="/" class="btn btn-outline-primary">← Back to Home</a>
    </div>
  </div>

  <script>
    function updateDateTime() {
      const now = new Date();
      const formatted = now.toLocaleString();
      document.getElementById('datetime').textContent = 'Date & Time: ' + formatted;
    }

    updateDateTime();
    setInterval(updateDateTime, 1000);
  </script>
</body>
</html>