package com.green.gambti.result;

import com.green.gambti.entity.*;
import com.green.gambti.repository.*;
import com.green.gambti.result.model.RecGameVo;
import com.green.gambti.result.model.ResultTitleVo;
import com.green.gambti.result.model.ResultVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ResultService {
    private final ResultRepository rep;

    @Value("${img.dir}")
    private String imgDir;

    public ResultVo getResult(String mbti) throws Exception {
        Result r = rep.findByMbti(mbti);
        if (r == null) { throw new Exception("잘못된 파라미터 값"); }

        return ResultVo.builder()
                .mbti(r.getMbti())
                .img(String.format("%s/mbti/%s", imgDir, r.getImg()))
                .description(r.getDescription())
                .analysis(r.getAnalysis())
                .recGenre(r.getRecGenres().stream().map(RecGenre::getGenre).toList())
                .recGame(r.getRecGames().stream().map(g ->
                        RecGameVo.builder()
                        .name(g.getGame().getName())
                        .platform(g.getGame().getPlatforms().stream().map(p -> p.getPlatform().getName()).toList())
                        .genre(g.getGame().getGenres().stream().map(gen -> gen.getGenre().getName()).toList())
                        .img(String.format("%s/game/%s", imgDir, g.getGame().getImg()))
                        .build()).toList())
                .build();
    }

    public ResultTitleVo getResultTitle(String mbti) throws Exception {
        Result r = rep.findByMbti(mbti);
        if (r == null) { throw new Exception("잘못된 파라미터 값"); }

        return ResultTitleVo.builder()
                .title(r.getTitle())
                .comment(r.getComment())
                .build();
    }
}

//        List<RecGameVo> recGame = new ArrayList<>();
//        r.getRecGames().forEach(g ->  {
//            Game gm = g.getGame();
//            RecGameVo vo = RecGameVo.builder()
//                    .name(gm.getName())
//                    .img(String.format("%s/%s", imgDir, gm.getImg()))
//                    .build();
//
//            List<GameGenre> genreList = gameGenreRep.findAllByGame(gm);
//            List<String> genres = new ArrayList<>();
//            genreList.forEach(gameGenre -> genres.add(gameGenre.getGenre().getName()));
//            vo.setGenre(genres);
//
//            List<GamePlatform> platformList = gamePlatformRep.findAllByGame(gm);
//            List<String> platforms = new ArrayList<>();
//            platformList.forEach(gamePlatform -> platforms.add(gamePlatform.getPlatform().getName()));
//            vo.setPlatform(platforms);
//
//            recGame.add(vo);
//        });