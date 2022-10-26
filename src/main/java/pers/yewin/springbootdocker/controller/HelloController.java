package pers.yewin.springbootdocker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: Ye Win
 * @created: 24/10/2022
 * @project: spring-boot-docker-sample
 * @package: pers.yewin.springbootdocker.controller
 */

@RestController
public class HelloController {

    /**
     * This is demo project for docker and so, I won't add many APIs and logic.
     */

    @GetMapping("/getHello")
    public String getHello(){
        return "Hello from Dockerized Application";
    }
}
