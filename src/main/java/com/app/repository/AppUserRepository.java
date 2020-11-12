package com.app.repository;

import com.app.entity.AppUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AppUserRepository  extends JpaRepository<AppUser,Long>  {

public Optional<AppUser> findByUsername(String userername);

    @Override
    <S extends AppUser> S save(S s);
}
