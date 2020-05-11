<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="email_address_app_error.jsp" %>
<%@ page import="business.User, data.UserIO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- in this page, we have added an errorPage attribute. This tells the 
            application to load the specified page if it encounters an error
            of any kind while processing the form
        -->

        <% 
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
        String ageInput = request.getParameter("age");
        
        int age = Integer.parseInt(ageInput);
        
        ServletContext sc = this.getServletContext();
        
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        
        User user = new User(firstName, lastName, emailAddress, age);
        
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
            <tr>
                <td align="right">Age: </td>
                <td><%= age %></td>
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
