package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Getter
public class RecGenre {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long recGenId;

    @ManyToOne
    @JoinColumn(name = "result_id", nullable = false)
    private Result result;

    @ManyToOne
    @JoinColumn(name = "genre_id", nullable = false)
    private Genre genre;
}
