✏boostcourse-web-todo-list
========================

## 📌웹 프론트엔드 기술요구 사항
* 총 2개의 화면이 존재합니다.
  - 할 일 목록 화면 (리스트)
  - 할 일 등록 화면 (쓰기)
* CSS는 기획서와 동일한 수준으로 만들어야 합니다.
* 따라서 HTML 엘리먼트간의 배치와 간격은 일정하고 반듯해야 합니다.
* 글자의 크기는 일정한 수준을 유지합니다.
* CSS는 외부 라이브러리(부트스트랩)을 사용하지 않습니다.
* jQuery를 사용하지 않고, querySelector, addEventListener, innerHTML을 사용해서 DOM, EVENT 처리를 합니다.
* Ajax는 XMLHTTPRequest를 사용합니다.

## 📌웹 벡엔드 기술요구 사항
* 프로젝트는 maven프로젝트로 생성합니다.
* 제공된 테이블 생성 SQL을 이용해서 테이블을 생성합니다.
* TodoDto 클래스와 TodoDao클래스를 주어진 스펙에 맞게 작성합니다.
* 메인화면을 보여주기 위한 MainServlet과 main.jsp를 작성합니다.
* MainServlet은 TodoDao를 이용해 결과를 조회해서 main.jsp 에 전달합니다.
* 새로운todo등록 버튼을 클릭하면 해당 요청을 서블릿이 받아서 jsp로 포워딩하여 할 일 등록 화면을 보여줍니다.
* 할일등록폼에서 값을 입력하고 제출 버튼을 누르면 post 방식으로 요청하게 합니다.
* 해당 요청을 서블릿이 받아서 처리하게하고, 요청에 대한 모든 일이 끝나면 메인화면으로 리다이렉트 합니다.
* 메인화면에서 todo 상태변경 버튼(->)을 클릭하여 요청을 보낼 때, Todo 의 Id와 상태값을 전달하여 다음 상태로 (현재 상태가 Todo라면 doing으로 doing 이라면 done) 상태를 나타내는 컬럼값을 변경하고 응답결과로 "success"를 보냅니다.

## ▶개발과정 참고
  - ### ✅BE개발 MySql 설치
  1. 프로젝트 이름을 Todo로해서 maven프로젝트를 생성합니다.
  2. 제공된 테이블 생성 SQL을 이용해서 테이블을 생성합니다.
  3. Todo 테이블에 정보 한 건을 담을 수 있는 TodoDto 클래스를 주어진 스펙에 맞게 작성합니다.
  4. Todo 테이블에 입력, 수정, 조회하는 TodoDao클래스를 주어진 스펙에 맞게 작성합니다.
  5. 메인화면을 보여주기 위한 MainServlet과 main.jsp를 작성합니다.
  6. MainServlet은 TodoDao를 이용해 결과를 조회해서 main.jsp 에 전달합니다.
  7. main.jsp에서는 전달받은 결과를 JSTL 과 EL을 이용해 출력합니다.
  8. 새로운todo등록 버튼을 클릭하면 TodoFormServlet이 실행되고, TodoFormServlet은 todoForm.jsp로 포워딩하여 할 일 등록 화면을 보여줍니다.
  9. 할 일 등록폼에서 값을 입력하고 제출 버튼을 누르면 post 방식으로 TodoAddServlet으로 값이 전달되고, TodoAddServlet에서는 TodoDao를 이용해서 테이블에 저장하고 메인화면으로 리다이렉트합니 다.
  10. 메인화면에서 todo 상태변경버튼(->)을 클릭하면 TodoTypeServlet에게 Todo 의 Id와 상태 값을 전달하여 다음 상태로 (현재 상태가 TODO라면 DOING으로 DOING 이라면 DONE로) TodoDao를 이용해서 변경합니다.
  - ### ✅테이블 생성 SQL
  ```sql
  CREATE TABLE todo 
  ( id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT, title VARCHAR(255) NOT NULL, name VARCHAR(100) NOT NULL, sequence INT(1) NOT NULL, type VARCHAR(20) DEFAULT 'TODO', regdate DATETIME DEFAULT NOW(), 
  PRIMARY KEY (id) );
  ```
