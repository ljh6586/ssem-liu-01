package kong.xiao.controller;

import javafx.scene.control.Alert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controllert {

//    @RequestMapping("/a1")
//    public String sfhu(){
//        return "a1";
//    }
    @RequestMapping("/a1")
    public String sfhqu(String name){
        String msg="";
        if(name!=null){
            if("aaa".equals(name)){
                msg= "ok";
            }else {
                msg= "faile";
            }

        }
        return msg;
    }
}
