package com.thinkgem.jeesite.modules.sys.web;


import com.thinkgem.jeesite.modules.sys.entity.Volume;
import com.thinkgem.jeesite.modules.sys.service.InvestigationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/*
* 调查控制器
 * @author GuoShiLong
 * @version 2019-11-19
*/


@Controller
@RequestMapping(value = "${adminPath}/sys/InvestigationController")
public class InvestigationController {

    @Autowired
    private InvestigationService investigationService;
    //进入调查问卷录入页面
    @RequestMapping("questionnaireEntry")
    public ModelAndView questionnaireEntry(Volume volume){
        ModelAndView mv = new ModelAndView();


        mv.setViewName("Investigation/questionnaire_entry");
        return mv;
    }
    //问卷调查保存
    @RequestMapping(value="/save",method= RequestMethod.POST,produces = "application/json; charset=utf-8")
    public ModelAndView save(Volume volume){
        ModelAndView mv = new ModelAndView();

        //保存前台录入信息
        investigationService.save(volume);
        mv.setViewName("Investigation/questionnaire_entry");
        return mv;
    }


}
