package com.app.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
@Configuration
@ComponentScan("com.app")
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private MyUserDetailService userDetailsService;

    @Autowired
    private CustomSuccessHandler customSuccessHandler;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    };

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests().antMatchers("/Register","/resources/**","/resources/***","/resources/****","/resources/*****","/resources/******","/resources/*").permitAll()
                .and()
                .formLogin().loginPage("/Login").permitAll()
                .usernameParameter("username")
                .passwordParameter("password")
                .successHandler(customSuccessHandler)
                .failureUrl("/Login?error=true")
                .usernameParameter("username").passwordParameter("password")
                .and()
                .logout().logoutUrl("/Logout")
                .and()
                .authorizeRequests().anyRequest().authenticated();

        http.csrf().disable();
    }

//    @Bean
//    public CustomSuccessHandler successHandler() {
//        return new CustomSuccessHandler();
//    }
}
