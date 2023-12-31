package com.green.gambti.question;

import com.green.gambti.entity.Question;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/question")
@RequiredArgsConstructor
@Tag(name = "gambti 검사 질문/답변")
public class QuestionController {
    private final QuestionService service;

    @GetMapping("/{id}")
    public Question getQuestionById(@PathVariable @Parameter(description = "질문지 번호(1~20)", example = "1") Long id) throws Exception {
        return service.getQuestionById(id);
    }
}
