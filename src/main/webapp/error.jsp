<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error - ExpenseManager</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #d5f2f5;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .error-box {
            background-color: white;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.25);
            width: 400px;
            text-align: center;
        }

        .error-box h2 {
            color: #e74c3c;
            margin-bottom: 20px;
        }

        .error-message {
            color: #c0392b;
            font-size: 15px;
            margin-bottom: 25px;
        }

        .error-box a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #2980b9;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }

        .error-box a:hover {
            background-color: #1e6aa9;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>Error Occurred</h2>
        <div class="error-message">
            <%= request.getAttribute("errorMessage") %>
        </div>
        <a href="index.jsp">Go back to Login</a>
    </div>
</body>
</html>
