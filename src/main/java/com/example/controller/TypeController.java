package com.example.controller;


import com.example.bean.Gtype;
import com.example.bean.Msg;
import com.example.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class TypeController {

    @Autowired
    private TypeService typeService;

    @RequestMapping("/types")
    @ResponseBody
    public Msg getType(){

        List<Gtype> types = typeService.getTypes();
        Msg msg = Msg.success().add("types", types);
        return msg;
    }





}
