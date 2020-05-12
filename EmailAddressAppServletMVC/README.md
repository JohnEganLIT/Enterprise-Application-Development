The purpose of this project is to build upon the previous iterations of the EmailAddressApp.

The previous iteration used a Servlet to produce HTML output. However, this is not how Servlets are best
utilized. This project has been reworked so that the application can levarage what works best in both
JSPs and Servlets.

* Servlet will handle business processing. Will act as a Controller.
* JSP will handle the Presentation. Will act as the Views.


**Servlet**
In this example, after instantiating the User object, I used the request.setAttribute() method to set the 
User object to the request.

A String value for next page was then assigned. 

This String value was passed to the request.getRequestDispatcher() method to create a RequestDispatcher 
object

The .forward() method was called on the dispatcher object, and was passed the request and response as 
parameters.

**JSP**
<% User u = (User) request.getAttribute("user"); %> is added to the JSP. This pulls the User object that
was set in setAttribute() method of the Servlet, and assigns it to User object "u".

JSP Expressions can now be used in the JSP to work directly with the User object from the request. The
methods contained within the User class are now exposed to the JSP.

For example, <%= u.getFirstName() %> will return the value of the firstName variable for User object "u".
