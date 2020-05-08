<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email Address App</title>
    </head>
    <body>
        
        <!-- The purpose of this project is to give a brief introduction to JSPs
            In this example, we will gather data from a form. This form will be sent
            via a GET request to the display_email_entry.jsp page. 
        -->
        
        <h1>Join Our Email List</h1>
        <p>To join our email list, enter your name and email address below</p>
        
        <form action="display_email_entry.jsp" method="get">
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
                    <td></td>
                    <td><br><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
