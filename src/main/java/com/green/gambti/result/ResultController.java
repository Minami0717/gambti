package com.green.gambti.result;

import com.green.gambti.result.model.ResultTitleVo;
import com.green.gambti.result.model.ResultVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
@RequiredArgsConstructor
@Tag(name = "gambti 검사 결과")
public class ResultController {
    private final ResultService service;

    @GetMapping("/result")
    public ResultVo getResult(@Parameter(example = "estp") String mbti) throws Exception {
        return service.getResult(mbti);
    }

    @GetMapping("/result-title")
    @Operation(summary = "결과 제목 부분")
    public ResultTitleVo getResultTitle(@Parameter(example = "estp") String mbti) throws Exception {
        return service.getResultTitle(mbti);
    }
}
