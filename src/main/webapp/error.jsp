<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error - Expense Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        /* Container with thin glass background */
        .error-box {
            width: 100%;
            max-width: 420px;
            padding: 25px;
            text-align: center;
            background: rgba(255, 255, 255, 0.15);
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            backdrop-filter: blur(8px);
        }

        h2 {
            margin-bottom: 15px;
            color: #ff4c4c;
            font-size: 24px;
        }

        .error-message {
            color: #ffeaea;
            font-size: 15px;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            padding: 12px 25px;
            background: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-size: 15px;
            transition: 0.3s;
        }

        a:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>Error Occurred</h2>
        <div class="error-message">
            <%= request.getAttribute("errorMessage") %>
        </div>
        <a href="index.jsp">Go Back to Login</a>
    </div>
</body>
</html>
