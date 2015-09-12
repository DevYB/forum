package com.learning.forum.repository;

import com.learning.forum.domain.Post;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by pt on 9/12/15.
 */
public interface PostRepository extends JpaRepository<Post, Integer>{
}
