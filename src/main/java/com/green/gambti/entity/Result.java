package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Getter;

import java.util.List;

@Entity
@Getter
public class Result {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long resultId;

    @Column(nullable = false, columnDefinition = "CHAR(4)", unique = true)
    private String mbti;

    @Column(nullable = false, length = 50)
    private String title;

    @Column(nullable = false, length = 100)
    private String img;

    @Column(nullable = false, length = 100)
    private String comment;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private String analysis;

    @OneToMany(mappedBy = "result")
    private List<RecGenre> recGenres;

    @OneToMany(mappedBy = "result")
    private List<RecGame> recGames;
}
