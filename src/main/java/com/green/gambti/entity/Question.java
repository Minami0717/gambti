package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Question {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long questionId;

    @Column(nullable = false, length = 100)
    private String content;

    @Column(nullable = false, length = 100)
    private String answer1;

    @Column(nullable = false, length = 100)
    private String answer2;

    @Column(nullable = false, length = 100)
    private String img;
}
