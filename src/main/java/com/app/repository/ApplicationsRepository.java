package com.app.repository;

import com.app.entity.AppUser;
import com.app.entity.Applications;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.LinkedList;
import java.util.List;

@Repository
public interface ApplicationsRepository  extends JpaRepository<Applications,Long>  {

    LinkedList<Applications> findAll();


}
