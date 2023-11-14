package com.green.gambti.result.model;

import com.green.gambti.entity.Genre;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class ResultVo {
    private String mbti;
    private String img;
    private String description;
    private String analysis;
    private List<Genre> recGenre;
    private List<RecGameVo> recGame;
}
