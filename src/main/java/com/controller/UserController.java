package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {

    @Resource(name = "userService")
    private UserService userService;

    //登录验证
    @RequestMapping("dologin")
    public ModelAndView doLogin(@ModelAttribute("user") User user, HttpSession session){
        User user1 = userService.login(user);
        ModelAndView mv= new ModelAndView();
        if(null != user1){
            session.setAttribute("userSession",user1);
            mv.setViewName("book");
        }else {
            mv.setViewName("login");
            mv.addObject("error","用户名或密码错误");
        }
        return mv;
    }
}
