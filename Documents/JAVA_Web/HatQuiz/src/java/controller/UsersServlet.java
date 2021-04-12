package controller;

import DAO.UserDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;
import tools.MD5;

public class UsersServlet extends HttpServlet {

    UserDAO usersDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
                request.setCharacterEncoding("utf-8");
                response.setCharacterEncoding("utf-8");
                users.setUserName(request.getParameter("name"));
                users.setEmail(request.getParameter("email"));
                users.setPassword(MD5.encryption(request.getParameter("pass")));
                users.setPhone(request.getParameter("phone"));
                users.setAddress(request.getParameter("address"));
                usersDAO.insertUser(users);
                session.setAttribute("user", users);
                url = "/login.jsp";
                break;
            case "login":
                users = usersDAO.login(request.getParameter("email"),MD5.encryption(request.getParameter("pass")));
                if (users != null) {
                    session.setAttribute("user", users);
                    url = "/index.jsp";
                } else {
                    session.setAttribute("error", "Email hoặc mật khẩu không đúng!");
                    url = "/login.jsp";
                }
                break;

        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
