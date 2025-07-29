package dao;

import configuration.ConnectionUtil;
import model.Expense;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ExpenseDao {
    public void addExpense(Expense expense){
        String insertQuery = "insert into expense (user_id,remark,amount,payment_mode,date) values (?,?,?,?,?)";
        try {
            Connection connection = ConnectionUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setInt(1,expense.getUserId());
            preparedStatement.setString(2,expense.getExpenseRemark());
            preparedStatement.setInt(3,expense.getExpenseAmount());
            preparedStatement.setString(4,expense.getPaymentMode());
            preparedStatement.setTimestamp(5, Timestamp.valueOf(expense.getTime()));

            preparedStatement.executeUpdate();
            System.out.println("expense added successfully");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateExpense(Expense expense){
        Connection connection = ConnectionUtil.getConnection();
        String updatequery="update expense set remark=?,amount=?,payment_mode=?,date=? where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(updatequery);

            preparedStatement.setString(1,expense.getExpenseRemark());
            preparedStatement.setInt(2,expense.getExpenseAmount());
            preparedStatement.setString(3,expense.getPaymentMode());
            preparedStatement.setTimestamp(4, Timestamp.valueOf(expense.getTime()));
            preparedStatement.setInt(5,expense.getExpenseId());
            preparedStatement.executeUpdate();
            System.out.println("Expense updated successfully");
        }
        catch (SQLException e){
            throw new RuntimeException(e);
        }
    }


    public void deleteExpense(int ExpenseId){
        Connection connection = ConnectionUtil.getConnection();
        String query="delete from expense where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1,ExpenseId);
            preparedStatement.executeUpdate();
            System.out.println("expense deleted successfully");
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    public List<Expense> getAllExpenses(int userId){
        List<Expense> expenseList = new ArrayList<>();
        Connection connection = ConnectionUtil.getConnection();
        String query = "select * from expense where user_id="+userId;
        Statement statement=null;
        try {
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()){
                Expense expense = Expense.builder()
                        .ExpenseId(resultSet.getInt("id"))
                        .ExpenseRemark(resultSet.getString("remark"))
                        .ExpenseAmount(resultSet.getInt("amount"))
                        .PaymentMode(resultSet.getString("payment_mode"))
                        .Time(resultSet.getTimestamp("date").toLocalDateTime())
                        .build();
                expenseList.add(expense);
            }
        }
        catch (SQLException e){
            throw new RuntimeException(e);
        }
        return expenseList;
    }
}