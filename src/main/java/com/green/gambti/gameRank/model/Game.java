package com.green.gambti.gameRank.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Game {
    private int rank;
    private String title;
    private String genre;
    private String company;
}
