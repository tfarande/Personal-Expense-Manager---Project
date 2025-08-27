<%@ page contentType="text/html" %>

<html>
<head>
    <title>User Registration - Expense Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Reset & Base */
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

        /* Navbar */
        .navbar {
            position: absolute;
            top: 0;
            width: 100%;
            padding: 15px 0;
            background: rgba(0,0,0,0.6);
            text-align: center;
        }
        .navbar h1 {
            margin: 0;
            font-size: 24px;
            color: white;
            letter-spacing: 1px;
        }

        /* Container with thin background */
        .container {
            width: 100%;
            max-width: 420px;
            padding: 25px;
            text-align: center;
            background: rgba(255, 255, 255, 0.15); /* thin white background */
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            backdrop-filter: blur(8px); /* glass effect */
        }

        h2 {
            margin-bottom: 25px;
            color: #fff;
            font-size: 24px;
        }

        /* Input fields */
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            display: block;
            width: 100%;
            height: 48px;
            padding: 0 15px;
            margin: 12px 0;
            border: none;
            border-radius: 25px;
            outline: none;
            background: rgba(255, 255, 255, 0.92);
            font-size: 15px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            box-sizing: border-box;
        }

        /* Button */
        input[type="submit"] {
            width: 100%;
            height: 48px;
            border: none;
            border-radius: 25px;
            background: #007bff;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 15px;
            box-shadow: 0 3px 8px rgba(0,0,0,0.2);
        }
        input[type="submit"]:hover {
            background: #0056b3;
        }

        /* Extra links */
        .link {
            display: block;
            margin-top: 18px;
            color: #fff;
            text-decoration: none;
            font-size: 15px;
        }
        .link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Expense Management System</h1>
    </div>

    <div class="container">
        <h2>User Registration</h2>
        <form action="register" method="post">
            <input type="text" name="name" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email Address" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Register">
        </form>
        <a class="link" href="index.jsp">Already registered? Login</a>
    </div>
</body>
</html>
