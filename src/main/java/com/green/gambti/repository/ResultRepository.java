package com.green.gambti.repository;

import com.green.gambti.entity.Result;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ResultRepository extends JpaRepository<Result, Long> {
    Result findByMbti(String mbti);
}
