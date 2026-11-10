package org.example;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

        String url="/index.html";

        String action = req.getParameter("action");
        if (action == null) {
            action = "join";
        }

        if (action.equals("join")) {
            url = "/index.html";
        } else if (action.equals("add")) {
            String firstName = req.getParameter("firstname");
            String lastName = req.getParameter("lastname");
            String email = req.getParameter("email");
            String dateOfBirth = req.getParameter("dateofbirth");
            String heardFrom = req.getParameter("heardFrom");
            String wantsUpdates = req.getParameter("wantsUpdates");
            String emailOK = req.getParameter("emailOK");
            String contactVia = req.getParameter("contactVia");

            if (wantsUpdates == null) {
                wantsUpdates = "No";
            }

            if (emailOK == null) {
                emailOK = "No";
            }

            User user = new User(firstName, lastName, email, dateOfBirth);
            Survey survey = new Survey(heardFrom, wantsUpdates, emailOK, contactVia);
            req.setAttribute("user", user);
            req.setAttribute("survey", survey);
            url = "/thanks.jsp";
        }
        getServletContext().getRequestDispatcher(url).forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         doPost(req, resp);
    }
}
