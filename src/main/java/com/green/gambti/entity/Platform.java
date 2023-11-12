package com.green.gambti.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;

@Entity
@Getter
public class Platform {
    @Id //pk
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    @Column(updatable = false, nullable = false, columnDefinition = "BIGINT UNSIGNED")
    private Long platformId;

    @Column(nullable = false, length = 20, unique = true)
    private String name;
}
