package com.green.gambti.result;

import com.green.gambti.result.model.ResultVo;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/result")
@RequiredArgsConstructor
@Tag(name = "gambti 검사 결과")
public class ResultController {
    private final ResultService service;

    @GetMapping
    public ResultVo getResult(@Parameter(example = "estp", description = "현재는 estp만 정상 출력") String mbti) throws Exception {
        return service.getResult(mbti);
    }
}
