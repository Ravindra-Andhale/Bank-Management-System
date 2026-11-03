<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bank Account Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f8f9fa, #e3f2fd);
        }
        .form-container {
            max-width: 600px;
            margin: 2rem auto;
            padding: 2rem;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
        }
        .nav-link:hover {
            background-color: #dceefc;
        }
    </style>
</head>
<body>

<!-- Navigation Menu -->
<nav class="navbar navbar-expand-lg navbar-light bg-info">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold text-white" href="#">BankApp</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto text-center">
                <li class="nav-item"><a class="nav-link text-white" href="deposit">Deposit</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="withdraw">Withdraw</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="transfer">Transfer</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="search">Search</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="report">Report</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="close">Close Account</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Account Form -->
<div class="form-container">
    <h2 class="text-center mb-4 text-primary">Add New Account</h2>
    <form action="/addacc" method="post">
        <div class="mb-3">
            <label for="accNo" class="form-label">Account Number</label>
            <input type="number" class="form-control" id="accNo" name="accno" required>
        </div>
        <div class="mb-3">
            <label for="accName" class="form-label">Name</label>
            <input type="text" class="form-control" id="accName" name="accnm" required>
        </div>
        <div class="mb-3">
            <label for="accType" class="form-label">Account Type</label>
            <select class="form-select" id="accType" name="acctype" required>
                <option value="">Choose...</option>
                <option value="saving">Saving</option>
                <option value="current">Current</option>
                <option value="fixed">Fixed</option>
                <option value="ppf">PPF</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="balance" class="form-label">Balance</label>
            <input type="number" class="form-control" id="balance" name="balance" required>
        </div>
        <button type="submit" class="btn btn-success w-100">Submit</button>
    </form>
</div>

<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>