package com.example.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Models.DemoModel;

@RestController
@RequestMapping("/api")
public class DemoController {
    
    @GetMapping("/getjson")
    public ResponseEntity<DemoModel> getJson() {
        DemoModel model = new DemoModel();
        model.name = "John";
        model.surname = "Doe";
        model.number = 13;

        return ResponseEntity.ok(model);
    }
}
