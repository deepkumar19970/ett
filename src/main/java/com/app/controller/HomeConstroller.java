package com.app.controller;

import com.app.entity.AppUser;
import com.app.services.AppUserService;
import com.sun.org.apache.xpath.internal.objects.XString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;

@Controller
@RequestMapping("/")
public class HomeConstroller {

    @Autowired
    AppUserService appUserService;

    @RequestMapping(value = "/")
    public String index(ModelMap model) {
        model.addAttribute("message", "Spring MVC Java Configuration Example");
        return "home";
    }

    @RequestMapping(value = "/LoginAction")
    public void login(HttpServletRequest request , HttpServletResponse res ) throws IOException {

        res.sendRedirect("/");
    }

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView loginPage(@RequestParam(value = "error",required = false) String error,
                                  @RequestParam(value = "logout",	required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid Credentials provided.");
        }

        if (logout != null) {
            model.addObject("message", "Logged out from JournalDEV successfully.");
        }

        model.setViewName("login");
        return model;
    }

    @RequestMapping(value = "/Register", method = RequestMethod.POST)
    public ModelAndView register(@RequestParam(value = "error",required = false) String error,
                                  @RequestParam(value = "logout",	required = false) String logout , HttpServletRequest req , HttpServletResponse res) {


        String username = req.getParameter("username");
        String password = req.getParameter("password");

        AppUser appUser = new AppUser();
        appUser.setAccountNonExpired(true);
        appUser.setAccountNonLocked(true);
        appUser.setCredencialsNonExpired(true);
        appUser.setEnabled(true);
        appUser.setUsername(username);
        appUser.setPassword(password);

        ModelAndView model = new ModelAndView();
        appUser = appUserService.save(appUser);

        if(appUser!=null && appUser.getId()!=null){
                model.addObject("message", "Added successfully.");
        }else{
            model.addObject("message", "No User Added.");
        }

        model.setViewName("login");
        return model;
    }



}
