package com.srmo.account.controller;

import com.srmo.account.model.User;
import com.srmo.account.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/findUserById")
    public String findUserById(Integer id, Model model){
        User user = userService.findUserById(id);
        model.addAttribute("user",user);
        return "user";

    }
}
