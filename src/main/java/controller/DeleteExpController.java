package controller;

import service.ExpenseService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/delete")
public class DeleteExpController extends HttpServlet {
    ExpenseService expenseService = new ExpenseService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int ExpenseId = Integer.parseInt(req.getParameter("id"));
        expenseService.deleteExpense(ExpenseId);
        PrintWriter writer=resp.getWriter();
        writer.println("Expense deleted Successfully");
    }
}