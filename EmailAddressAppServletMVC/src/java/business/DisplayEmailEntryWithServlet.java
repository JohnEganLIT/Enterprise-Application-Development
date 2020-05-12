package business;

import data.UserIO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DisplayEmailEntryWithServlet", urlPatterns = {"/DisplayEmailEntryWithServlet"})
public class DisplayEmailEntryWithServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
        String ageInput = request.getParameter("age");
        
        int age = Integer.parseInt(ageInput);
        
        ServletContext sc = this.getServletContext();
        
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        
        User user = new User(firstName, lastName, emailAddress, age);
        
        UserIO.writeToFile(user, path);
        
        request.setAttribute("user", user);
        
        String nextPage = "/display_email_entry.jsp";
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
        
        dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
