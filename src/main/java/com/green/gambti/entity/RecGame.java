package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Getter
public class RecGame {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long recGameId;

    @ManyToOne
    @JoinColumn(name = "result_id", nullable = false)
    private Result result;

    @ManyToOne
    @JoinColumn(name = "game_id", nullable = false)
    private Game game;
}
