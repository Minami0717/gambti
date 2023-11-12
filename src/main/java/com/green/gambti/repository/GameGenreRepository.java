package com.green.gambti.repository;

import com.green.gambti.entity.Game;
import com.green.gambti.entity.GameGenre;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GameGenreRepository extends JpaRepository<GameGenre, Long> {
    List<GameGenre> findAllByGame(Game game);
}
