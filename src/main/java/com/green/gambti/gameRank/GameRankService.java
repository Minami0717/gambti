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
    public List<Game> getGameRanking(String platform) throws Exception {
        String query;
        switch (platform) {
            case "pc" -> query = "PC방게임랭킹";
            case "console" -> query = "콘솔게임랭킹";
            case "mobile" -> query = "모바일게임랭킹";
            default -> throw new Exception("파라미터값 오류");
        }
        return c.getGameRanking(query);
    }
}
