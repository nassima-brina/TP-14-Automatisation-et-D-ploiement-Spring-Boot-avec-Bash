package ma.ens.springbash.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String sayHello() {
        return "Le déploiement Bash a réussi ! L'application tourne sur le port 8085.";
    }
}