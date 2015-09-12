package com.learning.forum.repository;

import com.learning.forum.domain.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by pt on 9/12/15.
 */
public interface TopicRepository extends JpaRepository<Topic, Integer>{
}
