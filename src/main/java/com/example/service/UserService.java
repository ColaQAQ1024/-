package com.example.service;

import com.example.dao.UsersDao;
import com.example.dto.User;
import com.example.entiy.Users;

public class UserService {
    public Users check(User user){
        UsersDao usersDao = new UsersDao();
        return usersDao.check(user);
    }

    public Users getUserById(String userId){
        UsersDao usersDao = new UsersDao();
        return  usersDao.getUserById(userId);
    }
}
