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
//                .authorizeRequests()
//                .antMatchers("/").access("hasRole('ADMIN')")
//                .and()
                .authorizeRequests().antMatchers("/Register","/resources/").permitAll()
                .and()
                .formLogin().loginPage("/Login").loginProcessingUrl("/loginAction").successForwardUrl("/").permitAll()
                .failureUrl("/Login?error")
                .usernameParameter("username").passwordParameter("password")
                .and()
                .logout().logoutSuccessUrl("/Login?error")
                .and()
                .authorizeRequests().anyRequest().authenticated();

        http.csrf().disable();


//        http.authorizeRequests()
//                .antMatchers("/loginAction**").access("hasRole('ADMIN')")
//                .and()
//                .formLogin().loginPage("/loginAction")
//                .defaultSuccessUrl("/")
//                .failureUrl("/loginAction?error")
//                .usernameParameter("username").passwordParameter("password")
//                .and()
//                .logout().logoutSuccessUrl("/loginAction?logout");
    }
}
