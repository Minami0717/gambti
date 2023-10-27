package com.green.gambti.gameRank;

import com.green.gambti.crawling.Crawling;
import com.green.gambti.gameRank.model.Game;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GameRankService {
    private final Crawling c;

    public List<Game> getPcGameRanking() {
        return c.crawling("PC방게임랭킹");
    }
}
