package com.green.gambti.result;

import com.green.gambti.result.model.ResultVo;
import io.swagger.v3.oas.annotations.Parameter;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/result")
@RequiredArgsConstructor
public class ResultController {
    private final ResultService service;

    @GetMapping
    public ResultVo getResult(@Parameter(example = "istp") String mbti) throws Exception {
        return service.getResult(mbti);
    }
}
