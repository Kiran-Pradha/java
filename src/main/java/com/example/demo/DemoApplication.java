package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@RestController
public class DemoController {
    @GetMapping("/")
    public String hello() {
        return "Hello from Java Spring Boot!";
    }
}

