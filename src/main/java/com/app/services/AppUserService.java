package com.app.services;

import com.app.entity.AppUser;
import com.app.repository.AppUserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AppUserService {

    @Autowired
    AppUserRepository appUserRepository;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    public Optional<AppUser> getAppUserByUsername(String username){
        return appUserRepository.findByUsername(username);
    }

    public  AppUser  save(AppUser appUser){
        appUser.setPassword(bCryptPasswordEncoder.encode(appUser.getPassword()));
        return appUserRepository.save(appUser);
    }

}
