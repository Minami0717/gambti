package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Result {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long resultId;

    @Column(nullable = false, columnDefinition = "CHAR(4)")
    private String mbti;

    @Column(nullable = false, length = 50)
    private String title;

    @Column(nullable = false)
    private String analysis;
}
