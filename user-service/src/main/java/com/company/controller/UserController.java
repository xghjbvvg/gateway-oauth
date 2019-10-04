package com.company.controller;

import com.company.domain.User;
import com.company.service.IUserservice;
import com.company.util.MessageCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    IUserservice userservice;

    @GetMapping("/register")
    public Long register(User user){
        return userservice.register(user);
    }

    @GetMapping("/isExistUsername")
    public  Boolean isExistUsername(String username){
        return userservice.isExistUsername(username);
    }

    @GetMapping("/isExistPhone")
    public Boolean isExistPhone(String phone){
        return userservice.isExistPhone(phone);
    }

    @GetMapping("/isExistEmail")
    public Boolean isExistEmail(String email){
        return userservice.isExistEmail(email);
    }

    @GetMapping("/verificationCode")
    public void verificateCode(String phone){
        try {
             MessageCode.execute(phone);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    @GetMapping("/current")
    public Principal user(Principal principal) {
        return principal;
    }

    @GetMapping("/query")
//    @PreAuthorize("hasAnyAuthority('query')")
    public String query() {
        return "具有query权限";
    }
}
