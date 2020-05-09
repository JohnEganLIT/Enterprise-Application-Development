<%-- 
    Document   : index
    Created on : 06-May-2020, 22:24:24
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- The purpose of this project is to revisit the EmailAddressApp 
            previously developed. However, in this implementation, the data 
            is sent to the server which uses it to create a User object. 
            Another class will be developed, called UserIO, which will write
            the User's information to a file. 
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
