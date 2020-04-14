package com.utils;

import com.pojo.User;
import com.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

    ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
    UserService userService = (UserService) ac.getBean("userService");

    public void test(){
        User user = new User("lw","1");
        System.out.println(userService.login(user).getName());
    }

    public static void main(String[] args) {
        Test t = new Test();
        t.test();
    }
}
