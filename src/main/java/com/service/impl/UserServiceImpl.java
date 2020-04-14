package com.service.impl;

import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public User login(User user) {
        return userDao.login(user);
    }
}
