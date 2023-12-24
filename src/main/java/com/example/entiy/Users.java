package com.example.entiy;

import lombok.Data;

import java.sql.Date;

@Data
public class Users {
    private  int id;
    private String username;
    private String password;
    private String email;
    private Date birthday;

    public Users() {}
    public Users(int id, String name, String password, String email, Date birthday) {
        this.id = id;
        this.username = name;
        this.password = password;
        this.email = email;
        this.birthday = birthday;
    }
}