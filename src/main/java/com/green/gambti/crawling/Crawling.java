package com.green.gambti.crawling;

import com.green.gambti.gameRank.model.GameVo;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Component
public class Crawling {
//    private final ChromeOptions options;
//    public Crawling() {
//        System.setProperty("webdriver.chrome.driver", "driver/chromedriver.exe"); // 크롬 드라이버 셋팅 (드라이버 설치한 경로 입력)
//        options = new ChromeOptions();
//        options.addArguments("--disable-popup-blocking"); // 팝업안띄움
//        options.addArguments("headless"); // 브라우저 안띄움
//        options.addArguments("--disable-gpu"); // gpu 비활성화
//        options.addArguments("--blink-settings=imagesEnabled=false"); // 이미지 다운 안받음
//    }
//
//    public List<Game> getGameRankingSelenium(String query) {
//        WebDriver driver = new ChromeDriver(options);
//        WebDriverWait webDriverWait = new WebDriverWait(driver, Duration.ofSeconds(10)); // 드라이버가 실행된 뒤 최대 10초 기다리겠다.
//
//        String url = "https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&mra=bkJB&pkid=3001&qvt=0&query=" + query;
//        driver.get(url); // 브라우저에서 url로 이동한다.
//
//        if (query.equals("모바일게임랭킹")) {
//            String text = "최고매출순";
//            webDriverWait.until(
//                    ExpectedConditions.presenceOfElementLocated(By.linkText(text))
//            );
//
//            WebElement menu = driver.findElement(By.linkText(text)); // findElement 는 해당되는 선택자의 첫번째 요소만 가져온다
//            menu.click(); // 최고매출순 클릭
//        }
//
//        String selector = ".list_info";
//        int rank = 1;
//
//        List<Game> gameList = new ArrayList<>();
//        for (int i = 0; i < 2; i++) {
//            webDriverWait.until(
//                    ExpectedConditions.presenceOfElementLocated(By.cssSelector(selector))
//                    // cssSelector로 선택한 부분이 존재할때까지 기다려라
//            );
//
//            WebElement element = driver.findElements(By.cssSelector(selector)).get(i);
//            List<WebElement> elements = element.findElements(By.cssSelector(".info_box"));
//
//            for (WebElement e : elements) {
//                String title = e.findElement(By.cssSelector(".title")).getText();
//                List<WebElement> cateInfo = e.findElements(By.cssSelector(".cate_info .text"));
//                Game g = Game.builder()
//                        .rank(rank++)
//                        .title(title)
//                        .genre(cateInfo.get(0).getText())
//                        .company(cateInfo.get(1).getText())
//                        .build();
//
//                gameList.add(g);
//            }
//
//            WebElement next = driver.findElement(By.cssSelector(".pg_next"));
//            next.click();
//        }
//
//        //driver.close();	// 탭 닫기
//        driver.quit();	// 브라우저 닫기
//
//        return gameList;
//    }
    public List<GameVo> getGameRankingJsoup(String query) throws IOException {
        String url = "https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&mra=bkJB&pkid=3001&qvt=0&query=" + query;
        Connection con = Jsoup.connect(url);

        Document doc = con.get();
        Elements infoBox = doc.select(".info_box");

        List<GameVo> gameList = new ArrayList<>();
        int rank = 1;

        for (Element box : infoBox) {
            gameList.add(GameVo.builder()
                    .rank(rank++)
                    .title(box.select(".title").text())
                    .genre(box.select(".cate_info .text").first().text())
                    .company(box.select(".cate_info .text").last().text())
                    .img(box.select(".thumb img").attr("abs:src"))
                    .build());
        }

        return gameList;
    }
}
