package com.example.service;

import com.example.dao.UsersDao;
import com.example.dto.User;
import com.example.entiy.Users;

public class UserService {

    public static UsersDao usersDao = new UsersDao();

    public Users check(User user){
        return usersDao.check(user);
    }

    public Users getUserById(String userId){
        return  usersDao.getUserById(userId);
    }

    public boolean register(Users users) {
        return usersDao.register(users);
    }
}
