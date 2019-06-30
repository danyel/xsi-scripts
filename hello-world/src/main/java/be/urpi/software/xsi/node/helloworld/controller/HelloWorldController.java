package be.urpi.software.xsi.node.helloworld.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Log4j2
@RequestMapping(path = "/helloWorld")
@RestController
public class HelloWorldController {
    @GetMapping
    ResponseEntity<String> helloWorld() {
        log.info("Hit helloWorld endpoint");
        return ResponseEntity.ok("Hello World");
    }
}
