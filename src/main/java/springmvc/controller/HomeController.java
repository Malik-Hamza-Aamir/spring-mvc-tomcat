package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


// data can be send to the frontend using 2 ways
// 1. addAttribute(string key, object obj) using Model model
// 2. using ModelAndView

@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home(Model model) {
        model.addAttribute("name", "Hamza Aamir");
        List<String> colleagues = new ArrayList<String>();
        colleagues.add("nauman");
        colleagues.add("khalid");
        colleagues.add("ali");

        model.addAttribute("emp", colleagues);
        System.out.println("home controller home fn called");
        return "index";
    }

    @RequestMapping("/help")
    public ModelAndView help() {
        System.out.println("help controller fn called");
        ModelAndView modelAndView = new ModelAndView();
        // set the data
        modelAndView.addObject("name", "Hamza Aamir");
        modelAndView.addObject("rollno", 190900);

        // for displaying list in jsp we have to use jstl maven dependency
        List<Integer> numbers = new ArrayList<>();
        numbers.add(10);
        numbers.add(20);
        numbers.add(30);

        modelAndView.addObject("numbers", numbers);

        // set the view name
        modelAndView.setViewName("help");
        return modelAndView;
    }

}
