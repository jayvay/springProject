show tables;

/* 도서 주문관리 프로젝트에 필요한 테이블 설계 */
/* 고객테이블 */
create table customers (
  custid  int not null AUTO_INCREMENT PRIMARY KEY,	/* 고객 고유번호 */
  name    varchar(20)  not null,		/* 고객명 */
  address varchar(30)  not null,		/* 고객주소 */
  phone   varchar(15)  not null			/* 고객 연락처 */
);

/* 책정보 테이블 */
create table books (
  bookid    int not null AUTO_INCREMENT  PRIMARY KEY,	/* 책 고유번호 */
  bookname  varchar(30) not null,	/* 책이름 */
  publisher varchar(20) not null,	/* 출판사명 */
  price     int not null			/* 책가격(정가) */
);

/* 주문 테이블 */
create table orders (
  orderid  int not null AUTO_INCREMENT PRIMARY KEY,	/* 주문 고유번호 */
  custid   int not null,		/* 고객 고유번호(고객테이블의 고유번호이다.) */
  bookid   int not null,		/* 책 고유번호(책테이블의 고유번호이다.) */
  saleprice int not null,		/* 실제 책 구입가격 */
  orderdate TIMESTAMP,			/* 책 주문 날짜 */
  FOREIGN KEY(custid) REFERENCES customers(custid) on update RESTRICT,
  FOREIGN KEY(bookid) REFERENCES books(bookid) on update RESTRICT
);

/* 각각의 테이블 구조 확인 */
desc customers;
desc books;
desc orders;

/* 자료파일 */
-- books(책정보)
INSERT INTO books VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO books VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO books VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO books VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO books VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO books VALUES(6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO books VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO books VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO books VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO books VALUES(10, 'Olympic Champions', 'Pearson', 13000);
INSERT INTO books VALUES(11, '가나다', '삼성당', 17500);
INSERT INTO books VALUES(12, '포토샵CS6', '제우미디어', 25000);
INSERT INTO books VALUES(13, '아시안게임 이야기', '스포츠북', 19500);
INSERT INTO books VALUES(14, '우리들 이야기', '우리출판사', 5000);
INSERT INTO books VALUES(15, '서로 사랑하자', '이상미디어', 18000);
INSERT INTO books VALUES(16, '하나된 마음으로', '대한미디어', 21000);
INSERT INTO books VALUES(17, '나눌수 있을때', '나무수', 9000);
INSERT INTO books VALUES(18, '함박눈 내리는날', '이상미디어', 15000);
INSERT INTO books VALUES(19, '나보다 축구를', '굿스포츠', 23000);
INSERT INTO books VALUES(20, '시작했을때 한번더', '삼성당', 19000);



-- customers(고객정보)
INSERT INTO customers VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO customers VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO customers VALUES (3, '김말숙', '대한민국 강원도', '000-7000-0001');
INSERT INTO customers VALUES (4, '손흥민', '영국 토트넘', '000-8000-0001');
INSERT INTO customers VALUES (5, '박세리', '대한민국 대전',  '001-0011-0012');
INSERT INTO customers VALUES (6, '이순신', '대한민국 아산',  '001-0009-0007');
INSERT INTO customers VALUES (7, '손흥민', '영국 토트넘',  '000-1100-005');

-- orders(주문정보) 데이터 생성
INSERT INTO orders VALUES (1, 1, 1, 6000, '2019-08-01'); 
INSERT INTO orders VALUES (2, 1, 3, 21000, '2018-09-03');
INSERT INTO orders VALUES (3, 2, 5, 8000, '2022-11-03'); 
INSERT INTO orders VALUES (4, 3, 6, 6000, '2020-06-04'); 
INSERT INTO orders VALUES (5, 4, 7, 19000, '2019-11-05');
INSERT INTO orders VALUES (6, 1, 2, 12000, '2021-09-07');
INSERT INTO orders VALUES (7, 4, 8, 11000, '2019-03-07');
INSERT INTO orders VALUES (8, 3, 10, 12000, '2021-07-08');
INSERT INTO orders VALUES (9, 2, 10, 9000, '2017-05-09');
INSERT INTO orders VALUES (10, 3, 18, 13000, '2022-10-11');
INSERT INTO orders VALUES (11, 7, 15, 15000, '2022-06-17');
INSERT INTO orders VALUES (12, 7, 20, 16000, '2022-12-19');
INSERT INTO orders VALUES (13, 3, 19, 23000, '2022-06-30');
INSERT INTO orders VALUES (14, 1, 16, 17000, '2022-11-21');
INSERT INTO orders VALUES (15, 4, 15, 13000, '2022-05-12');
INSERT INTO orders VALUES (16, 7, 10, 13000, '2022-09-24');
INSERT INTO orders VALUES (17, 1, 12, 23000, '2022-02-26');
INSERT INTO orders VALUES (18, 2, 11, 13000, '2022-09-16');
INSERT INTO orders VALUES (19, 4, 20, 13000, '2022-03-20');
INSERT INTO orders VALUES (20, 4, 15, 20000, '2023-04-26');
INSERT INTO orders VALUES (21, 1, 15, 13000, '2023-10-12');

/* 테이블의 자료 확인 */
select * from customers;
select * from books;
select * from orders;



/* ---------------------------------------------------------------- */

-- 출판사 '굿스포츠' 또는 '대한미디어'인 도서를 검색하세요.
select * from books where publisher = '굿스포츠' or publisher = '대한미디어';
select * from books where publisher in ('굿스포츠', '대한미디어');
select * from books where publisher like '%굿스포츠%' or publisher like '%대한미디어%';
select * from books where publisher like '%스포츠%' or publisher like '%미디어%';

-- 각각의 테이블에 별명을 지정해서 검색
select * from books b;
select * from orders o;

-- books 테이블과 orders 테이블의 정보를 모두 출력		<<--얘 뭐야
select * from books, orders;
select * from books b, orders o;

-- books 테이블과 orders 테이블의 정보 중에 서로 관계 설정이 되어 있는 자료만 출력
select * from books b, orders o where b.bookid = o.bookid;

-- books 테이블과 orders 테이블과 customers 테이블의 정보 중에 서로 관계 설정이 되어 있는 자료만 출력
select * from books b, orders o, customers c where b.bookid = o.bookid and c.custid = o.custid;

-- 한번 이상 구매한 책들의 정보를 bookid 오름차순 정렬
select * from orders order by bookid;

-- 한번 이상 구매한 책들의 고유번호와 이름을 bookid 오름차순 정렬
select o.bookid as bid, bookname from orders o, books b where o.bookid = b.bookid order by o.bookid;

-- 한번 이상 구매한 책들의 고유번호와 이름을 bookid 오름차순 정렬 (같은 책은 하나만 출력)
select o.bookid as bid, bookname from orders o, books b where o.bookid = b.bookid group by bookname order by o.bookid;

-- 한번 이상 구매한 책들의 고유번호와 이름을 bookid 오름차순 정렬 (같은 책은 하나만 출력, 책당 구매된 수량 출력)
select o.bookid as bid, bookname, count(bookname) from orders o, books b where o.bookid = b.bookid group by bookname order by o.bookid;

-- 출판사가 '굿스포츠' 또는 '대한미디어' 가 아닌 도서 출력
select * from books where publisher not in('굿스포츠', '대한미디어');

-- 출판사가 '굿스포츠'인 책들 중 판매된 적이 있는 책들의 리스트 출력
select * from orders o, books b where o.bookid = b.bookid and b.publisher = '굿스포츠';

-- 주문 테이블 목록과 주문한 책의 이름과 주문자 이름을 함께 출력
SELECT o.*, b.bookname, c.name FROM orders o, books b, customers c WHERE o.bookid = b.bookid AND o.custid = c.custid;

-- 최신 주문 순으로 주문한 책 이름, 주문자, 주문날짜를 출력
SELECT b.bookname, c.name, o.orderdate FROM orders o, books b, customers c WHERE o.bookid = b.bookid AND o.custid = c.custid ORDER BY orderdate desc;
	-- 필드명이 중복되지 않는 경우, 별명을 사용하지 않아도 알아서 그 필드에 해당하는 테이블의 필드를 가리킴

-- 책 주문을 4건 이상 한 고객의 아이디를 출력
select custid, count(custid) from orders group by custid; 
select custid, count(custid) from orders group by custid having count(*) >= 4;

-- 책 주문을 4건 이상 한 고객의 아이디를 적게 구매한 사람 순으로 출력
select custid, count(custid) from orders group by custid having count(*) >= 4 order by count(*);

-- 책 주문을 4건 이상 한 고객의 아이디와 고객의 이름을 적게 구매한 사람 순으로 출력
select c.custid, count(c.custid), c.name from orders o, customers c 
	where o.custid = c.custid group by c.custid having count(*) >= 4 order by count(*);

-- 서브 쿼리 : 조건 안에서의 조건(괄호()로 묶어준다)으로 검색
-- 주문한 책 가격이 10000~15000원인 책들을 내림차순으로 출력
select * from orders where saleprice >= 10000 and saleprice <= 15000 order by saleprice desc;
select * from (select * from orders order by saleprice desc) as temp where saleprice >= 10000 and saleprice <= 15000;

-- 책을 한번이라도 구매한 적이 있는 고객 이름을 출력
select * from customers
	where custid in (select custid from orders);
	
-- 평균 판매 가격 이상으로 판매된 책 고유번호, 책 이름, 정가, 판매가격 출력
select b.bookid, b.bookname, b.price, o.saleprice from books b, orders o 
	where o.bookid = b.bookid
	and o.saleprice >= (select avg(saleprice) from orders);
	
-- 출판사가 '대한미디어'나 '삼성당'인 책을 구매한 고객의 아이디, 이름을 출력
select c.custid, c.name, b.bookid, b.publisher from customers c, books b, orders o 
	where o.bookid = b.bookid and o.custid = c.custid 
	and c.custid in (select custid from orders 
	where b.bookid in (select bookid from books where publisher in ('대한미디어', '삼성당')));
	
select c.custid, c.name, o.bookid from orders o, customers c 	-- <<==은이한테 물어보기
	where o.bookid in (select bookid from books where publisher = '대한미디어'  or publisher = '삼성당') and o.custid = c.custid;
	
select o.orderid, c.custid, c.name, b.publisher, b.bookid from orders o, customers c,
	(select bookid, publisher, bookname from books where publisher = '대한미디어' or publisher = '삼성당') as b
	 where o.bookid = b.bookid and c.custid = o.custid;
	 
/*--------------------------------------------------------------------------------------------------------------------*/
	 