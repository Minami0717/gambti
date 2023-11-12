package com.green.gambti.gameRank;

import com.green.gambti.gameRank.model.GameVo;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/game-ranking")
@RequiredArgsConstructor
@Tag(name = "플랫폼별 인기게임 순위")
public class GameRankController {
    private final GameRankService service;

    @GetMapping
    public List<GameVo> getGameRanking(
            @Parameter(description = "pc | console | mobile", example = "pc") String platform) throws Exception {
        return service.getGameRanking(platform);
    }
}
