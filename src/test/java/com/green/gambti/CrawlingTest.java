package com.green.gambti;

import com.green.gambti.crawling.Crawling;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.io.IOException;

@ExtendWith(SpringExtension.class)
@Import(Crawling.class)
public class CrawlingTest {
    @Autowired
    private Crawling c;

    @Test
    void test() throws IOException {
        System.out.println(c.getGameRankingJsoup("PC방게임랭킹"));
    }
}
