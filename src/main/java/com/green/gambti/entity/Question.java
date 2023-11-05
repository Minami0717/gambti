package com.green.gambti.entity;

import jakarta.persistence.*;

@Entity
public class Question {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long questionId;
}
