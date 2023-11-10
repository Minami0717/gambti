package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Game {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long gameId;
}
