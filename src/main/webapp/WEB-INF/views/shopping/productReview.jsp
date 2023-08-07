<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Review</title>
        <link rel="stylesheet" href="../resources/css//productReviewStyle.css">
    </head>
    <body>
        <div id="container">
            <header>
                <h1>상품 후기</h1>
            </header>
            <main>
                <form id="review-form">
                    <div class="form-group">
                        <label for="recommendation">추천여부 (필수)</label>
                        <div class="radio-buttons">
                            <label>
                                <input type="radio" name="recommendation" value="적극추천" required> 적극추천
                            </label>
                            <label>
                                <input type="radio" name="recommendation" value="추천"> 추천
                            </label>
                            <label>
                                <input type="radio" name="recommendation" value="보통"> 보통
                            </label>
                            <label>
                                <input type="radio" name="recommendation" value="추천안함"> 추천안함
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="delivery-satisfaction">배송만족 (필수)</label>
                        <div class="radio-buttons">
                            <label>
                                <input type="radio" name="delivery-satisfaction" value="빠름" required> 빠름
                            </label>
                            <label>
                                <input type="radio" name="delivery-satisfaction" value="보통"> 보통
                            </label>
                            <label>
                                <input type="radio" name="delivery-satisfaction" value="느림"> 느림
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="comments">직접입력 (선택)</label>
                        <textarea name="comments" id="comments" rows="5" placeholder="여기에 후기를 입력해주세요."></textarea>
                    </div>
                    <div class="buttons">
                        <button type="submit" class="btn btn-primary">작성완료</button>
                        <button type="reset" class="btn">초기화</button>
                        <button type="button" class="btn" onclick="cancelReview()">닫기</button>
                    </div>
                </form>
            </main>
        </div>
        <script>
            function cancelReview() {
                // 취소 버튼 클릭 시 동작
                window.close(); // 작은 윈도우 창 닫기
            }
        </script>
    </body>
</html>
