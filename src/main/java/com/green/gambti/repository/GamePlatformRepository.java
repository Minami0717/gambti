package com.green.gambti.repository;

import com.green.gambti.entity.Game;
import com.green.gambti.entity.GamePlatform;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GamePlatformRepository extends JpaRepository<GamePlatform, Long> {
    List<GamePlatform> findAllByGame(Game game);
}
