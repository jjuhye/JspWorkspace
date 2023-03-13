create database rentcardb;
-- drop table member;
-- delete from rentcar;
-- delete from carreserve;
USE rentcardb;
-- rentcar 테이블 생성
CREATE TABLE rentcar(
	no INT AUTO_INCREMENT,
    name VARCHAR(20),
    category INT,
    price INT,
    usepeople INT,
    company VARCHAR(50),
    img VARCHAR(50),
    info VARCHAR(500),
    PRIMARY KEY (no)
);

-- member 테이블 생성
CREATE TABLE member(
	no INT AUTO_INCREMENT,
	id VARCHAR(20),
    pw VARCHAR(20),
    email VARCHAR(50),
    tel VARCHAR(20),
    hobby VARCHAR(60),
    job VARCHAR(15),
    age VARCHAR(10),
    info VARCHAR(500),
    PRIMARY KEY (no)
);

CREATE TABLE carreserve(
	reserve_seq INT AUTO_INCREMENT,
    no INT,
    id VARCHAR(50),
    qty INT,
    dday INT,
    rday VARCHAR(50),
    usein INT,
    usewifi INT,
    usenavi INT,
    useseat INT,
    PRIMARY KEY (reserve_seq)
);

select * from rentcar;
select * from member;
select * from carreserve;

INSERT INTO member VALUES (1, 'qwer', '1234', 'qwer@naver.com', '010-2343-2444', '스포츠', '개발자', 31, '반갑습니다');
INSERT INTO member VALUES (2, 'asdf', '1234', 'qwer@naver.com', '010-2343-2444', '스포츠', '개발자', 31, '반갑습니다');


-- rentercar 데이터 삽입
INSERT INTO rentcar VALUES (1, '아반테', 1,  2000, 4, '기아', '1.jpg' , '아반테 자동차 입니다.');
INSERT INTO rentcar VALUES (2, 'BMW', 3,  6000, 4, 'BMW', '2.jpg' , 'BMW 자동차 입니다.');
INSERT INTO rentcar VALUES (3, '카니발', 1,  4000, 7, '기아', '3.jpg' , '카니발 자동차 입니다.');
INSERT INTO rentcar VALUES (4, '카렌스', 2,  2500, 4, '기아', '4.jpg' , '카렌스 자동차 입니다.');
INSERT INTO rentcar VALUES (5, '코란도', 1,  3000, 4, '현대', '5.jpg' , '코란도 자동차 입니다.');
INSERT INTO rentcar VALUES (6, '에쿠스', 3,  6000, 4, 'BMW', '6.jpg' , '에쿠스 자동차 입니다.');
INSERT INTO rentcar VALUES (7, '제네시스', 1,  3000, 0, '기아', '7.jpg' , '제네시스 자동차 입니다.');
INSERT INTO rentcar VALUES (8, '그랜져', 1,  2400, 4, '현대', '8.jpg' , '그랜져 자동차 입니다.');
INSERT INTO rentcar VALUES (9, 'k3', 1,  2700, 4, '현대', '9.jpg' , 'k3 자동차 입니다.');
INSERT INTO rentcar VALUES (10, 'k5', 2,  5000, 4, '기아', '10.jpg' , 'k5 자동차 입니다.');
INSERT INTO rentcar VALUES (11, 'k9', 1,  6000, 1, '현대', '11.jpg' , 'k9 자동차 입니다.');
INSERT INTO rentcar VALUES (12, '라세티', 2,  2000, 5, '기아', '12.jpg' , '라세티 자동차 입니다.');
INSERT INTO rentcar VALUES (13, 'lf소나타', 1,  2000, 2, '현대', '13.jpg' , 'lf소나타 자동차 입니다.');
INSERT INTO rentcar VALUES (14, '말리부', 3,  2000, 4, 'BMW', '14.jpg' , '말리부 자동차 입니다.');
INSERT INTO rentcar VALUES (15, '모닝', 1,  23000, 4, '현대', '15.jpg' , '모닝 자동차 입니다.');
INSERT INTO rentcar VALUES (16, '올란도', 3,  5000, 3, 'BMW', '16.jpg' , '올란도 자동차 입니다.');
INSERT INTO rentcar VALUES (17, '레이', 2,  4000, 4, '현대', '17.jpg' , '레이 자동차 입니다.');
INSERT INTO rentcar VALUES (18, 'SM5', 1,  2700, 4, 'BMW', '18.jpg' , 'SM5 자동차 입니다.');
select * from rentcar where category="1" order by no desc limit 3;
select * from rentcar where usepeople>0 order by no desc limit 3;
-- DELETE from rentcar where no=2;
-- UPDATE rentcar SET no = no -1 WHERE name = 'SM5';
-- SELECT * FROM rentcar ORDER BY no;
-- 최신순으로 3대의 자동차 정보 추출
-- SELECT * FROM rentcar ORDER BY no DESC LIMIT 3;
UPDATE rentcar SET usepeople = usepeople -1 WHERE no = '3';
