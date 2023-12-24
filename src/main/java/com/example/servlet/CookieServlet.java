package com.example.servlet;

import com.example.entiy.Users;
import com.example.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "CookieServlet", urlPatterns = "/cookie")
public class CookieServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users users = new Users();
        UserService userService = new UserService();
        Cookie[] cookies = request.getCookies();

        if (cookies != null){
            for (Cookie c : cookies) {
                if (c.getName().equals("userId")) {
                    // 获取userId的值
                    String userId = c.getValue();
                    users = userService.getUserById(userId);
                    System.out.println(users);
                    HttpSession session = request.getSession();
                    session.setAttribute("user", users);
                    response.sendRedirect("/excise_war_exploded/index.jsp");
                    break;
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
