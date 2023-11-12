package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Getter
public class GameGenre {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long gameGenreId;

    @ManyToOne
    @JoinColumn(name = "game_id", nullable = false)
    private Game game;

    @ManyToOne
    @JoinColumn(name = "genre_id", nullable = false)
    private Genre genre;
}
