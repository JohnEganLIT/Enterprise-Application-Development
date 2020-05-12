# Forwarding Requests and Redirecting Responses #

The purpose of this project is to demonstrate how request objects can be passed from a Servlet to a
JSP or another Servlet when using the MVC pattern. 

Two common methods of the request object are:
* setAttribute(String name, Object o) - Binds object 'o' to the request under the specified name
* getAttribute(String name) - Retrieves an object from the request

These methods are used in conjunction with a RequestDispatcher

A RequestDispatcher allows:
* The including of content in a request/response
* The forwarding of a request/response to a resource (JSP/HTML/Another Servlet) 

**UserServlet**

In the UserServlet, the processRequest() method includes the following line of code:
* doGet(request, response);

This calls the doGet() method for the Servlet and passes the request and response objects to this method.

In the doGet() method, several User objects are created and added to an ArrayList. A RequestDispatcher 
object is created and supplied with the URL to the JSP page. 

the setAttribute() method is used to bind the list of User objects to the request. 
the forward() method of the RequestDispatcher object is called to forward the request/response objects
to the specified URL.


**page.jsp**

The following line of code is added to the JSP:
* <jsp: useBean id="userList" scope="request" type="ArrayList<business.User>" />

This locates the User bean class. 

In the HTML body, we can now use Scriptlets to declare, open, and close a for loop, in the form:
* for(User u : userList) { }

This will iterate through the userList, assign each individual User object to 'u'.

JSP Expressions are used inside the for loop to return the data sotred within the variables of each User 
object. Syntax as follows:
* <%= u.getFirstName() %>
