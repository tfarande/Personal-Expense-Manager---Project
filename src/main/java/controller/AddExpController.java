package controller;

import model.Expense;
import service.ExpenseService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet("/expense")
public class AddExpController extends HttpServlet {
    ExpenseService expenseService = new ExpenseService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = (Integer) request.getSession().getAttribute("userId");
        List<Expense> expenseList = expenseService.getAllExpenses(userId);
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<table border='1'><tr><th>ID</th> <th>Remark</th> <th>Amount</th> <th>Payment Mode</th> <th>Time</th></tr>");
        for (Expense expense : expenseList) {
            writer.println("<tr>");
            writer.println("<td>" + expense.getExpenseId() + "</td>");
            writer.println("<td>" + expense.getExpenseRemark() + "</td>");
            writer.println("<td>" + expense.getExpenseAmount() + "</td>");
            writer.println("<td>" + expense.getPaymentMode() + "</td>");
            writer.println("<td>" + expense.getTime() + "</td>");
            writer.println("</tr>");
        }
        writer.println("</table>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = (Integer) request.getSession().getAttribute("userId");
        String ExpenseRemark = request.getParameter("remark");
        int ExpenseAmount = Integer.parseInt(request.getParameter("amount"));
        String PaymentMode = request.getParameter("payment_mode");
        LocalDateTime Time = LocalDateTime.parse(request.getParameter("time"));

        Expense expense = Expense.builder()
                .UserId(userId)
                .ExpenseRemark(ExpenseRemark)
                .ExpenseAmount(ExpenseAmount)
                .PaymentMode(PaymentMode)
                .Time(Time)
                .build();
        expenseService.addExpense(expense);

        PrintWriter writer = response.getWriter();
        System.out.println("Expense added successfully");
        response.sendRedirect("welcome.html");
    }
}