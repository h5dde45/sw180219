package com.sw;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingController {

    @GetMapping
    public String main(Model model) {
        model.addAttribute("some","hi user");
        return "main";
    }

    @GetMapping("/greeting")
    public String greeting(@RequestParam(name="name", required=false,
            defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        return "greeting";
    }

}
