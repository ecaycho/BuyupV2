package com.tecsup.castell.controller.security;

import com.tecsup.castell.helper.AppConstant;
import com.tecsup.castell.helper.RolEnum;
import com.tecsup.castell.model.Persona;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @RequestMapping(value = {"login", "/"})
    public String index(HttpServletRequest request,HttpSession session, @RequestParam(required = false) String error, Model model) throws Exception {

        Persona autenticado = (Persona) session.getAttribute(AppConstant.USUARIO_AUTENTICADO);

        if (autenticado != null) {
            
            
            if (autenticado.getUsuario().getRol().equals(RolEnum.VENTA.toString())) {
                return ("redirect:/categoria");

            } else if (autenticado.getUsuario().getRol().equals(RolEnum.ADMIN.toString())) {
                
                
                request.getSession().setAttribute("rol", RolEnum.ADMIN.toString());
                
                return ("redirect:/adm/vendedor");
            }
        }

        if (error != null) {
            model.addAttribute("loginError", true);
        }

        return "login/index";
    }

}
