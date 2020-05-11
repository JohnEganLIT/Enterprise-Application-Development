

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- The purpose of this project is to demonstrate how JSP applications
            can easily work with error pages. We have added an age field to the
            form. To test this application, the age will be entered by the user
            in alphabetic form eg. "twenty two"
        -->
        <h1>Join Our Email List</h1>
        <p>To join our email list, enter your name and email address below</p>
        
        <form action="DisplayEmailEntryWithServlet" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="right">First Name: </td>
                    <td><input type="text" name="firstName"></td>
                </tr>
                
                <tr>
                    <td align="right">Last Name: </td>
                    <td><input type="text" name="lastName"></td>
                </tr>
                
                <tr>
                    <td align="right">Email Address: </td>
                    <td><input type="text" name="emailAddress"></td>
                </tr>
                
                <tr>
                    <td align="right">Age: </td>
                    <td><input type="text" name="age"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><br><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
