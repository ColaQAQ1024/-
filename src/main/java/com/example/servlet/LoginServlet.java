package com.example.servlet;

import com.example.dto.User;
import com.example.entiy.Users;
import com.example.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserService userService = new UserService();
        Users users = null;

        if (request.getParameter("username") == null || request.getParameter("password") == null){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }

        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");

        User user = new User();
        user.setUsername(userName);
        user.setPassword(passWord);

        // 判断用户是否存在
        users = userService.check(user);

        if (users != null){
            HttpSession session = request.getSession();
            session.setAttribute("user", users);
                if (request.getParameter("remember")!= null){
                    Cookie cookie = new Cookie("userId",users.getId() + "");
                    response.addCookie(cookie);
                }
            response.sendRedirect("/excise_war_exploded/index.jsp");
        } else {
            String error = "username, email or password error";
            request.setAttribute("error", error);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}