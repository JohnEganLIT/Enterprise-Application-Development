<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="business.User, data.UserIO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email Address App</title>
    </head>
    <body>
        
        <% User u = (User) request.getAttribute("user"); %>
        
        <h1>Thanks for joining our email list</h1>
        
        <p>Here is the information you entered: </p>
        
        <table cellspacing="5" cellpadding="5" border="0">
            <tr>
                <td align="right">First Name: </td>
                <td><%= u.getFirstName() %></td>
            </tr>
            <tr>
                <td align="right">Last Name: </td>
                <td><%= u.getLastName() %></td>
            </tr>
            <tr>
                <td align="right">Email Address: </td>
                <td><%= u.getEmailAddress() %></td>
            </tr>
            <tr>
                <td align="right">Age: </td>
                <td><%= u.getAge() %></td>
            </tr>
        </table>
            
        <p>To enter another email address, click the Back <br>
            button in your browser or the Return button shown <br>
            below</p>
        
        <form action="index.jsp" method="post">
            <input type="submit" value="Return">
        </form>
    </body>
</html>
