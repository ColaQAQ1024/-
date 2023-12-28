package com.example.servlet;

import com.example.entiy.Users;
import com.example.service.UserService;
import com.example.utils.StringToDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserService userService = new UserService();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        Date date =  StringToDate.stringToDate(request.getParameter("birthday"));
        System.out.println(date);
        Users users = new Users(username, password, email, date);

        // 调用service层注册方法
        if(userService.register(users)){
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }else{
            String errorByRegister = "注册失败，请重新注册";
            request.setAttribute("errorByRegister", errorByRegister);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
