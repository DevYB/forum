package com.learning.forum.service;

import com.learning.forum.domain.Post;
import com.learning.forum.domain.Topic;
import com.learning.forum.repository.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by pt on 9/12/15.
 */
@Service
public class TopicService {
    @Autowired
    private TopicRepository topicRepository;

    @Transactional
    public void createTopic(String title, String content){
        Topic topic = new Topic();
        topic.setTitle(title);
        Date date = new Date();
        topic.setCreatedAt(date);
        topic.setUpdatedAt(date);
        Post post = new Post();
        post.setContent(content);
        post.setCreatedAt(date);
        post.setUpdatedAt(date);
        topic.addPost(post);
        topicRepository.save(topic);
    }

    public List<Topic> findAll(){
        return topicRepository.findAll();
    }
}
