package com.app.controller.employeesinformation;

import com.app.entity.Employees;
import com.app.services.EmployeesService;
import com.app.utility.DataTypeUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/Employees/*")
public class EmployeesController {


    @Autowired
    EmployeesService employeesService;


    @RequestMapping(value = "/EmployeesAddPanelViewAction")
    public  void employeeAddAction(HttpServletRequest req , HttpServletResponse res ) throws IOException {
        Employees employees = objectBinding(req);
        employees = employeesService.save(employees);
        if(employees!=null && employees.getId()!=null){
            System.out.println("Succesfully Added");
        }

        res.sendRedirect("/Employees/EmployeesTableViewAction");
    }


    @RequestMapping(value = "/EmployeesTableViewAction")
    public  String employeeTableAction(HttpServletRequest req , HttpServletResponse res ) throws IOException {

        return "/employeeinformation/employees/employeesTableView";

    }


   private Employees objectBinding(HttpServletRequest req ){
        Employees employees = new Employees();

        employees.setId(DataTypeUtility.getForeignKeyValue(req.getParameter("id")));
        employees.setEmp_code(DataTypeUtility.stringValue(req.getParameter("empcode")));

        return employees;
   }
}
