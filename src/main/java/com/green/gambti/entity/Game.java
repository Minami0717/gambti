package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Getter
public class Game {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long gameId;

    @Column(nullable = false, length = 50, unique = true)
    private String name;

    @Column(nullable = false, length = 100)
    private String img;
}
