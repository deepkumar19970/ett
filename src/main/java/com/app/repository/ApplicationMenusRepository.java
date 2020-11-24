package com.app.repository;

import com.app.entity.ApplicationMenus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.LinkedList;
import java.util.List;

@Repository
public interface ApplicationMenusRepository  extends JpaRepository<ApplicationMenus,Long> {

    LinkedList<ApplicationMenus> findAll();
}
