<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: VGor
  Date: 05.07.2022
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>Dear Employee, you are WELCOME!!!</h2>
<br>
<br>
<br>

<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surName}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li> ${lang} </li>
    </c:forEach>
</ul>
Phone number: ${employee.phoneNumber}
<br>
Email: ${employee.email}


</body>
</html>
