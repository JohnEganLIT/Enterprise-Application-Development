<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanks You</title>
    </head>
    <body>
        
        <!-- The input field names are used to pull the data from the request and
            assign them to variables which can then be inserted into the 
            HTML via JSP Expressions.        
        -->
        
        <% 
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
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
