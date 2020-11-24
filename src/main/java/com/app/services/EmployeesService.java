package com.app.services;

import com.app.entity.Employees;
import com.app.repository.EmployeesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeesService {

    @Autowired
    EmployeesRepository employeesRepository;


    public Employees save(Employees employees){
       return employeesRepository.save(employees);
    }


}
