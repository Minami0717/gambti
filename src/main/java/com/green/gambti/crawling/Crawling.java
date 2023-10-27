package com.green.gambti.crawling;

import com.green.gambti.gameRank.model.Game;
import lombok.RequiredArgsConstructor;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.stereotype.Component;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;

@Component
public class Crawling {
    private final ChromeOptions options;
    public Crawling() {
        //System.setProperty("webdriver.chrome.driver", "driver/chromedriver.exe"); // 크롬 드라이버 셋팅 (드라이버 설치한 경로 입력)
        System.setProperty("webdriver.chrome.driver", "driver/chromedriver");
        options = new ChromeOptions();
        options.addArguments("--disable-popup-blocking"); // 팝업안띄움
        options.addArguments("headless"); // 브라우저 안띄움
        options.addArguments("--disable-gpu"); // gpu 비활성화
        options.addArguments("--blink-settings=imagesEnabled=false"); // 이미지 다운 안받음
    }

    public List<Game> getGameRanking(String query) {
        WebDriver driver = new ChromeDriver(options);
        WebDriverWait webDriverWait = new WebDriverWait(driver, Duration.ofSeconds(10)); // 드라이버가 실행된 뒤 최대 10초 기다리겠다.

        String url = "https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&mra=bkJB&pkid=3001&qvt=0&query=" + query;
        driver.get(url); // 브라우저에서 url로 이동한다.

        if (query.equals("모바일게임랭킹")) {
            String text = "최고매출순";
            webDriverWait.until(
                    ExpectedConditions.presenceOfElementLocated(By.linkText(text))
            );

            WebElement menu = driver.findElement(By.linkText(text)); // findElement 는 해당되는 선택자의 첫번째 요소만 가져온다
            menu.click(); // 최고매출순 클릭
        }

        String selector = ".list_info";
        int rank = 1;

        List<Game> gameList = new ArrayList<>();
        for (int i = 0; i < 2; i++) {
            webDriverWait.until(
                    ExpectedConditions.presenceOfElementLocated(By.cssSelector(selector))
                    // cssSelector로 선택한 부분이 존재할때까지 기다려라
            );

            WebElement element = driver.findElements(By.cssSelector(selector)).get(i);
            List<WebElement> elements = element.findElements(By.cssSelector(".info_box"));

            for (WebElement e : elements) {
                String title = e.findElement(By.cssSelector(".title")).getText();
                List<WebElement> cateInfo = e.findElements(By.cssSelector(".cate_info .text"));
                Game g = Game.builder()
                        .rank(rank++)
                        .title(title)
                        .genre(cateInfo.get(0).getText())
                        .company(cateInfo.get(1).getText())
                        .build();

                gameList.add(g);
            }

            WebElement next = driver.findElement(By.cssSelector(".pg_next"));
            next.click();
        }

        //driver.close();	// 탭 닫기
        driver.quit();	// 브라우저 닫기

        return gameList;
    }
}
