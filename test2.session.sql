-- 1. 테이블 생성 (users라는 이름의 테이블이 없을 때만 새로 만듭니다)
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- 자동으로 1씩 증가하는 고유 번호
    name TEXT NOT NULL,                   -- 이름 (필수 입력)
    age INTEGER                           -- 나이
);

-- 2. 데이터 추가 (행 삽입)
INSERT INTO users (name, age) VALUES ('김철수', 25);
INSERT INTO users (name, age) VALUES ('이영희', 28);
INSERT INTO users (name, age) VALUES ('박민수', 32);

-- 3. 데이터 조회 (전체 데이터 보기)
SELECT * FROM users;

-- 4. 특정 조건 데이터 조회 (나이가 26세 이상인 사람만 보기 - 연습용)
SELECT * FROM users WHERE age >= 26;