package com.example.bai2_buoi2;

import com.example.bai2_buoi2.model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "calculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

        float firstOperand = Float.parseFloat(request.getParameter("number1"));
        float secondOperand = Float.parseFloat(request.getParameter("number2"));
        String operator = request.getParameter("operator");
        PrintWriter writer = response.getWriter();
        float result = Calculator.calculator(firstOperand, secondOperand, operator);

        writer.println("<html>");
        writer.println((firstOperand + "  " + operator + "  "+ secondOperand+ " =  " + result));
        writer.println("</html>");
    }catch (RuntimeException e){
           response.getWriter().println("loi khong chia duoc cho 0");




        }
    }


}

