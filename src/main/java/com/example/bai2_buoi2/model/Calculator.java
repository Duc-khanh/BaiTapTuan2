package com.example.bai2_buoi2.model;
public class Calculator {
    public static float calculator(float number1, float number2, String operator) {
        switch (operator) {
            case "+":
                return number1 + number2;
            case "-":
                return number1 - number2;
            case "*":
                return number1 * number2;
            case "/":
                if (number2 != 0)
                    return number1 / number2;
                else throw new RuntimeException("cannot divide by zero");
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}

