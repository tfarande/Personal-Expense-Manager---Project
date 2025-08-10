<%@ page import="java.util.List" %>
<%@ page import="model.Expense" %> <!-- Use your actual Expense class path -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your Expenses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 30px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px #ccc;
            border-radius: 10px;
        }
        h2 {
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #e2e2e2;
        }
        a {
            text-decoration: none;
            color: #007bff;
            margin-right: 10px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Your Expenses</h2>
    <div style="text-align:right;">
        <a href="addExpense.html">Add New Expense</a>
    </div>
    <table>
        <tr>
            <th>ID</th>
            <th>Remark</th>
            <th>Amount</th>
            <th>Payment Mode</th>
            <th>Time</th>
        </tr>

        <%
            List<Expense> expenseList = (List<Expense>) request.getAttribute("expenseList");
            if (expenseList != null && !expenseList.isEmpty()) {
                for (Expense expense : expenseList) {
        %>
        <tr>
            <td><%= expense.getExpenseId() %></td>
            <td><%= expense.getExpenseRemark() %></td>
            <td><%= expense.getExpenseAmount() %></td>
            <td><%= expense.getPaymentMode() %></td>
            <td><%= expense.getTime() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5">No expenses found.</td>
        </tr>
        <% } %>

    </table>
</div>

</body>
</html>
