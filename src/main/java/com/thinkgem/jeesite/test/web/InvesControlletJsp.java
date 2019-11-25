package com.thinkgem.jeesite.test.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "${adminPath}/Inves/InvesControlletJsp")
public class InvesControlletJsp {
    //问卷调查录入
    @RequestMapping("questionnaireEntry")
    public ModelAndView questionnaireEntry(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("Investigation/questionnaire_entry");
        return mv;
    }
}
