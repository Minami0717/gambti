package com.green.gambti.question;

import com.green.gambti.entity.Question;
import com.green.gambti.repository.QuestionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class QuestionService {
    private final QuestionRepository rep;

    @Value("${img.dir}")
    private String imgDir;

    public Question getQuestionById(Long id) throws Exception {
        Optional<Question> opt = rep.findById(id);
        if (opt.isEmpty()) {
            throw new Exception("잘못된 파라미터 값");
        }
        Question q = opt.get();
        q.setImg(String.format("%s/question/%s", imgDir, q.getImg()));

        return q;
    }
}
