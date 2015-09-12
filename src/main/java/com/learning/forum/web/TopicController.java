package com.learning.forum.web;

import com.learning.forum.service.TopicService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by pt on 9/12/15.
 */
@Controller
public class TopicController {
    private Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private TopicService topicService;

    @RequestMapping("/topics")
    public String index(Model model){
        model.addAttribute("topics", topicService.findAll());
        return "topics/index";
    }

    @RequestMapping("/topics/new")
    public String newForm(){
        return "topics/new";
    }

    @RequestMapping(value="/topics", method = RequestMethod.POST)
    public String create(String title, String content){
        logger.info("title is {}", title);
        topicService.createTopic(title, content);
        return "redirect:/topics";
    }
}
