package com.thi.cuoiky.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/home")
    public String adminHome(HttpSession session, Model model) {
        String greetingMessage = (String) session.getAttribute("greetingMessage");
        model.addAttribute("greetingMessage", greetingMessage);
        return "admin/home"; // Trả về trang admin/home.html
    }
}