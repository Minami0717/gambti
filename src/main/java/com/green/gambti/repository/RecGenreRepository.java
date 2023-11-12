package com.green.gambti.repository;

import com.green.gambti.entity.RecGenre;
import com.green.gambti.entity.Result;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RecGenreRepository extends JpaRepository<RecGenre, Long> {
    List<RecGenre> findAllByResult(Result result);
}
