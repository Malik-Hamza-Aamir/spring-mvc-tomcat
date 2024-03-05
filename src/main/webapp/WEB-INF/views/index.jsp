<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" >
<title>Home Page</title>
</head>

<body>
<h2>Hello World!</h2>
<h2>Hamza Aamir</h2>
<h2>Test</h2>

<%
    String name = (String) request.getAttribute("name");
    ArrayList<String> colleagues = (ArrayList<String>) request.getAttribute("emp");
%>

<h1>Name is <%=name%> </h1>

<%
    for (String s : colleagues) {
%>

<h1> <%=s%> </h1>

<%
    }
%>

</body>
</html>
