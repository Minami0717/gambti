package com.green.gambti.repository;

import com.green.gambti.entity.RecGame;
import com.green.gambti.entity.RecGenre;
import com.green.gambti.entity.Result;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RecGameRepository extends JpaRepository<RecGame, Long> {
    List<RecGame> findAllByResult(Result result);
}
