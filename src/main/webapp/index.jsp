<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login - Expense Management System</title>
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
      background: rgba(255, 255, 255, 0.15); /* very thin white background */
      border-radius: 8px;
      border: 1px solid rgba(255, 255, 255, 0.3); /* subtle border */
      box-shadow: 0 4px 15px rgba(0,0,0,0.15); /* soft shadow */
      backdrop-filter: blur(8px); /* glassmorphism effect */
    }

    h2 {
      margin-bottom: 25px;
      color: #fff;
      font-size: 24px;
    }

    /* Input fields */
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
    .message {
      margin-top: 10px;
      font-size: 14px;
      color: #ffdddd;
    }
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
    <h2>Login to Your Account</h2>
    <form id="loginForm" action="login" method="post">
      <input type="email" name="email" placeholder="Email" required>
      <input type="password" name="password" placeholder="Password" required>
      <input type="submit" value="Login">
    </form>
    <div class="message" id="message"></div>
    <a class="link" href="register.jsp">New user? Register your account</a>
  </div>
</body>
</html>
