package business;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UserServlet", urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            doGet(request, response);
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            
            String url = "/page.jsp";
            
            RequestDispatcher dispatcher = request.getRequestDispatcher(url);
            
            User u1 = new User("Bob", "Ross", "bobross@gmail.com", 70);
            User u2 = new User("Joe", "Rogan", "joerogan@gmail.com", 55);
            User u3 = new User("Johnny", "Knoxville", "johnnyknox@gmail.com", 45);
            User u4 = new User("Bill", "Burr", "billburr@gmail.com", 50);
            
            ArrayList<User> users = new ArrayList();
            
            users.add(u1);
            users.add(u2);
            users.add(u3);
            users.add(u4);
            
            request.setAttribute("userList", users);
            
            dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
