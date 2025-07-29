package model;

import lombok.*;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class Expense {
    private int ExpenseId;
    private int UserId;
    private String ExpenseRemark;
    private int ExpenseAmount;
    private String PaymentMode;
    private LocalDateTime Time;
}