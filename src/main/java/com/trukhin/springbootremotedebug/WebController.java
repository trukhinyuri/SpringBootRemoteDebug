package com.trukhin.springbootremotedebug;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WebController {

    @GetMapping("/")
    public ResponseEntity<String> get() {
        return ResponseEntity.ok("Hello, Kubernetes Debug in IntelliJ");
    }
}
