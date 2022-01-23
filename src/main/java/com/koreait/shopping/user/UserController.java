package com.koreait.shopping.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @GetMapping("/login")
    public void login(){}

    @GetMapping("/join")
    public void join(){}

    @GetMapping("/kakaologin")
    public void kakaologin(){}

    @PostMapping("/kakaologin")
    public Map<String, Object> kakaologinProc(String access_Token) {
        String reqURL = "https://kapi.kakao.com/v2/user/me";
        return null;
    }

    @PostMapping("/join")
    public String joinProc() {
        return "redirect:/user/login";
    }
}
