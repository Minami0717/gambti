package com.green.gambti.result.model;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;

import java.util.List;

@Data
@Builder
public class RecGameVo {
    private String name;
    private List<String> platform;
    private List<String> genre;
    private String img;
}
