<%@page import="business.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="userList" scope="request" type="ArrayList<business.User>"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your List of Users</title>
    </head>
    <body>
        <%
            for(User u : userList) {
        %>
        <%= u.getFirstName() %> <br>
        <%= u.getLastName() %> <br>
        <%= u.getEmailAddress() %> <br>
        <%= u.getAge() %> <br>
        <hr>
        <% } %>
    </body>
</html>
