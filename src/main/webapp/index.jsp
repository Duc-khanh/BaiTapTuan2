<%@ page import="java.util.List" %>
<%@ page import="com.example.bai1_buoi2.model.Customers" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    List<Customers> customersList = new ArrayList<>();
    customersList.add(new Customers("duckhanh", "25/06/2005", "Quảng Trị", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScXcCBr_h6zpmV83U6vnDdN-2oBOzSodtlAA&s"));
    customersList.add(new Customers("chanh", "20/09/2005", "Pac Từ Liêm", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScXcCBr_h6zpmV83U6vnDdN-2oBOzSodtlAA&s"));
    customersList.add(new Customers("tamtam", "25/06/2005", "Vĩnh Phúc", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScXcCBr_h6zpmV83U6vnDdN-2oBOzSodtlAA&s"));
    customersList.add(new Customers("TuấnMinh", "09/06/2005", "Yên Bái", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScXcCBr_h6zpmV83U6vnDdN-2oBOzSodtlAA&s"));
    request.setAttribute("customerList", customersList);
%>
<h1>Danh Sách Khách Hàng</h1>
<table border="1px">
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="Customers" items="${customerList}">
        <tr>
            <td>${Customers.name}</td>
            <td>${Customers.dayOfBirth}</td>
            <td>${Customers.address}</td>
            <td><img style="width: 100px; height: 100px " src="${Customers.image}" alt="Hình Ảnh" class="customer-img">
            </td>
        </tr>

    </c:forEach>

</table>
</body>
</html>