package com.srmo.account.dao;

import com.srmo.account.model.User;

public interface UserDao {
    public User findUserById(Integer id);
}
