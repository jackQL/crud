package com.srmo.account.service.impl;

import com.srmo.account.dao.UserDao;
import com.srmo.account.model.User;
import com.srmo.account.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public User findUserById(Integer id) {
        return this.userDao.findUserById(id);
    }
}
