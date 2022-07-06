package edu.gor.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirtsView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails() {
        return "ask-emp-details-view";
    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@RequestParam("employeeName") String empName, Model model) {

        empName = "Mr. " + empName;
        model.addAttribute("nameAttribute", empName);
        model.addAttribute("description", " - udemy instructor");

        return "show-emp-details-view";
    }
}