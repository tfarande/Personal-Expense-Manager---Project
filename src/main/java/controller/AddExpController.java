package controller;

import model.Expense;
import service.ExpenseService;

import javax.servlet.RequestDispatcher;
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

        request.setAttribute("expenseList", expenseList); // pass data to JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("expenses.jsp");
        dispatcher.forward(request, response); // forward to JSP

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