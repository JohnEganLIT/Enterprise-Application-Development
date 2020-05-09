<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="business.User, data.UserIO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <% 
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
        
        ServletContext sc = this.getServletContext();
        
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        
        User user = new User(firstName, lastName, emailAddress);
        
        UserIO.writeToFile(user, path);
        %>
        
        <h1>Thanks for joining our email list</h1>
        
        <p>Here is the information you entered: </p>
        
        <table cellspacing="5" cellpadding="5" border="0">
            <tr>
                <td align="right">First Name: </td>
                <td><%= firstName %></td>
            </tr>
            <tr>
                <td align="right">Last Name: </td>
                <td><%= lastName %></td>
            </tr>
            <tr>
                <td align="right">Email Address: </td>
                <td><%= emailAddress %></td>
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
