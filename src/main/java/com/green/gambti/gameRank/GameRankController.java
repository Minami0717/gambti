package com.green.gambti.gameRank;

import com.green.gambti.gameRank.model.Game;
import io.swagger.v3.oas.annotations.Parameter;
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

    @GetMapping
    public List<Game> getGameRanking(
            @Parameter(description = "pc | console | mobile", example = "pc") String platform) throws Exception {
        return service.getGameRanking(platform);
    }
}
