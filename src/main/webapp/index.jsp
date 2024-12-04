<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="calculator" method="get">
    <label>First operand:</label>
    <input type="number" name="number1" placeholder="Nhap mot so vao day"><br>
    <label>Operator:</label>
    <select name="operator">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select><br>
    <label>Second operand:</label>
    <input type="number" name="number2" placeholder="Nhap mot so vao day"><br>
    <button type="submit">Calculator</button>


</form>

</body>
</html>