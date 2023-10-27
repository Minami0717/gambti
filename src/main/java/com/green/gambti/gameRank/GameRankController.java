package com.green.gambti.gameRank;

import com.green.gambti.gameRank.model.Game;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/game-ranking")
@RequiredArgsConstructor
public class GameRankController {
    private final GameRankService service;

    @GetMapping("/pc")
    public List<Game> getPcGameRanking() {
        return service.getPcGameRanking();
    }
}
