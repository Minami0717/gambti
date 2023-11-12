package com.green.gambti.result;

import com.green.gambti.entity.*;
import com.green.gambti.repository.*;
import com.green.gambti.result.model.RecGameVo;
import com.green.gambti.result.model.ResultVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ResultService {
    private final ResultRepository rep;
    private final RecGenreRepository genreRep;
    private final RecGameRepository gameRep;
    private final GameGenreRepository gameGenreRep;
    private final GamePlatformRepository gamePlatformRep;

    public ResultVo getResult(String mbti) throws Exception {
        Result r = rep.findByMbti(mbti);
        if (r == null) { throw new Exception("잘못된 파라미터 값"); }

        List<RecGenre> genre = genreRep.findAllByResult(r);
        List<String> recGenre = new ArrayList<>();
        genre.forEach(g -> recGenre.add(g.getGenre().getName()));

        List<RecGame> game = gameRep.findAllByResult(r);
        List<RecGameVo> recGame = new ArrayList<>();
        game.forEach(g ->  {
            Game gm = g.getGame();
            RecGameVo vo = RecGameVo.builder()
                    .name(gm.getName())
                    .img(gm.getImg())
                    .build();

            List<GameGenre> genreList = gameGenreRep.findAllByGame(gm);
            List<String> genres = new ArrayList<>();
            genreList.forEach(gameGenre -> genres.add(gameGenre.getGenre().getName()));
            vo.setGenre(genres);

            List<GamePlatform> platformList = gamePlatformRep.findAllByGame(gm);
            List<String> platforms = new ArrayList<>();
            platformList.forEach(gamePlatform -> platforms.add(gamePlatform.getPlatform().getName()));
            vo.setPlatform(platforms);

            recGame.add(vo);
        });

        return ResultVo.builder()
                .mbti(r.getMbti())
                .img(r.getImg())
                .description(r.getDescription())
                .analysis(r.getAnalysis())
                .recGenre(recGenre)
                .recGame(recGame)
                .build();
    }
}
