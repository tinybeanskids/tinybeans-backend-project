package com.tinybeans.backend.evaluation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author danrodrigues
 * Date: 13/5/22
 */
@Controller
@RequestMapping("/test")
public class TestController {

    @GetMapping("")
    @ResponseBody
    public String hello(){
        return "hello world";
    }
}
