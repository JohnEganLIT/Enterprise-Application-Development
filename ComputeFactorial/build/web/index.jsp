<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compute Factorial</title>
    </head>
    
        <!-- The purpose of this project is to demonstrate the various 
            Constructs of JSP. There are three Constructs that can be used 
            to insert Java code into the resultant servlet: Expressions, 
            Scriptlets, and Declarations
        -->
        <h1>Compute Factorial</h1>
        
        
        
        <!-- Scriptlets allow you to write blocks of Java code in the JSP
            The following is an example of the implementation of a Scriptlet
        -->
        
        <% for(int i = 0; i <= 10; i++) { %>
        Factorial of <%= i %> is 
        <!-- Expressions are used to insert a Java expression directly 
            into the output. Expression is converted to a String and included 
            in the output. The following is an Expression
        -->
        <%= computeFactorial(i) %> <br>
        <% } %>
        
        <!-- Declarations are used for declaring methods or fields in the JSP
            The following is an example of a Declaration
        -->
        
        <%! private long computeFactorial(int n) {
                if(n == 0) {
                return 1;
                }else {
                return n * computeFactorial(n-1);
                }
            }
        %>
    
</html>
