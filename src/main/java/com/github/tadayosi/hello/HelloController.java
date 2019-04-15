package com.github.tadayosi.hello;

import java.util.Collections;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String greeting(@RequestParam(name = "name", required = false, defaultValue = "World") String name) {
        System.out.println("received: name = " + name);
        String line = String.join("", Collections.nCopies(10, "0123456789"));
        String msg = String.join("\n", Collections.nCopies(10000, line));
        return msg;
    }

}
