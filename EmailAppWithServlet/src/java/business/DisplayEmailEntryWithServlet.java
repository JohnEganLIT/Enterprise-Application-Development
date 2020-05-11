
package business;

import data.UserIO;
import java.io.IOException;
import java.io.PrintWriter;
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
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
        String ageInput = request.getParameter("age");
        
        int age = Integer.parseInt(ageInput);
        
        ServletContext sc = this.getServletContext();
        
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        
        User user = new User(firstName, lastName, emailAddress, age);
        
        UserIO.writeToFile(user, path);
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!doctype html>\n" + "<html>\n" 
        + "<head><title>Intro to Servlets</title></head>\n" 
        + "<body>\n"
        + "<h1>Thanks for joining our email list</h1>\n"
        + "<p>Here is the information that you entered: </p>\n"
        + "<table cellspacing=\"5\" callpadding\"5\" border=\"0\">\n"
        + "<tr><td align=\"right\">First Name: </td>\n"
        + "<td>" + firstName + "</td>\n"
        + "</tr>\n"
                + "<tr><td align=\"right\">First Name: </td>\n"
        + "<td>" + lastName + "</td>\n"
        + "</tr>\n"
                + "<tr><td align=\"right\">First Name: </td>\n"
        + "<td>" + emailAddress + "</td>\n"
        + "</tr>\n"
                + "<tr><td align=\"right\">First Name: </td>\n"
        + "<td>" + age + "</td>\n"
        + "</tr>\n"
        + "</table>\n"
        + "<p>To enter another email address, click on the Back <br>\n"
        + "in your browser ot the Return button shown below. </p>\n"
        + "<form action=\"index.jsp\" >\n"
        + "<input type=\"submit\" value=\"Return\">\n"
        + "</form>\n"
        + "</body>\n"
        + "</html>\n");
        out.close();
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
