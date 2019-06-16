package be.urpi.software.xsi.node.helloworld.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping(path = "/helloWorld")
@RestController
public class HelloWorldController {
    @GetMapping
    ResponseEntity<String> helloWorld(){
        return ResponseEntity.ok("Hello World");
    }
}
