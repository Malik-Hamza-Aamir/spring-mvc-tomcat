<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<title>Help Page</title>
</head>

<body>
<h2>Help Page</h2>
<h1>${name}</h1>
<h2>${rollno}</h2>

<%
    ArrayList<Integer> numbers = (ArrayList<Integer>) request.getAttribute("numbers");
%>

<%
    for (Integer s : numbers) {
%>

<h1> <%=s%> </h1>

<%
    }
%>

</body>
</html>