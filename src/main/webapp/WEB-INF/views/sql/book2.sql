show tables;

-- 출판사 '굿스포츠' 또는 '대한미디어'인 도서를 검색하세요.
select * from books where publisher in ('굿스포츠', '대한미디어');

-- books 테이블과 orders 테이블의 정보를 모두 출력
select * from orders, books;	??

-- books 테이블과 orders 테이블의 정보 중에 서로 관계 설정이 되어 있는 자료만 출력
select * from orders o, books b where o.bookid = b.bookid;

-- books 테이블과 orders 테이블과 고객 테이블의 정보 중에 서로 관계 설정이 되어 있는 자료만 출력
select * from orders o, books b, customers c where o.bookid = b.bookid and o.custid = c.custid;

-- 한번 이상 구매한 책들의 정보를 bookid 오름차순 정렬
select * from orders order by bookid;

-- 한번 이상 구매한 책들의 고유번호와 이름을 bookid 오름차순 정렬
select b.bookid, b.bookname from orders o, books b where o.bookid = b.bookid order by o.bookid;

-- 한번 이상 구매한 책들의 고유번호와 이름을 bookid 오름차순 정렬 (같은 책은 하나만 출력)
select b.bookid, b.bookname from orders o, books b where o.bookid = b.bookid group by b.bookid order by o.bookid;

-- 한번 이상 구매한 책들의 고유번호와 이름을 bookid 오름차순 정렬 (같은 책은 하나만 출력, 책당 구매된 수량 출력)
select b.bookid, bookname,count(b.bookid) from orders o, books b where o.bookid = b.bookid group by b.bookid order by o.bookid;

-- 출판사가 '굿스포츠' 또는 '대한미디어' 가 아닌 도서 출력
select * from books where publisher not in ('굿스포츠', '대한미디어');

-- 출판사가 '굿스포츠'인 책들 중 판매된 적이 있는 책들의 리스트 출력
select * from orders o, books b where o.bookid = b.bookid and publisher = '굿스포츠';

-- 주문 테이블 목록과 주문한 책의 이름과 주문자 이름을 함께 출력
select o.*, bookname, name from orders o, books b, customers c where o.bookid = b.bookid and o.custid = c.custid;

-- 최신 주문 순으로 주문한 책 이름, 주문자, 주문날짜를 출력
select bookname, name, orderdate from books b, customers c, orders o where o.bookid = b.bookid and o.custid = c.custid order by orderdate desc;

-- 책 주문을 4건 이상 한 고객의 아이디를 출력
select custid, count(custid) from orders group by custid having count(*) >= 4; 

-- 책 주문을 4건 이상 한 고객의 아이디를 적게 구매한 사람 순으로 출력
select custid, count(custid) from orders group by custid having count(*) >= 4 order by count(*); --<<<<<<<<왜 count(여기에 *이 들어가죠?)

-- 책 주문을 4건 이상 한 고객의 아이디와 고객의 이름을 적게 구매한 사람 순으로 출력
select o.custid, count(o.custid), name from orders o, customers c where o.custid = c.custid group by o.custid having count(*) >= 4 order by count(*);

-- 서브 쿼리 : 조건 안에서의 조건(괄호()로 묶어준다)으로 검색
-- 주문한 책 가격이 10000~15000원인 책들을 내림차순으로 출력
select * from orders where saleprice >= 10000 and saleprice <= 15000 order by saleprice desc; 
select * from (select * from orders order by saleprice desc) as temp where saleprice >= 10000 and saleprice <= 15000;

-- 책을 한번이라도 구매한 적이 있는 고객 이름을 출력
select name from customers where custid in (select custid from orders);

-- 평균 판매 가격 이상으로 판매된 책 고유번호, 책 이름, 정가, 판매가격 출력
select b.bookid, bookname, price, o.saleprice from books b, orders o where b.bookid = o.bookid and saleprice >= (select avg(saleprice) from orders);

-- 출판사가 '대한미디어'나 '삼성당'인 책을 구매한 고객의 아이디, 이름을 출력 -- <<<<<<<?????????
select c.custid, name from customers c, orders o where c.custid = o.custid and o.bookid = bookid in (select bookid from books where publisher in ('대한미디어', '삼성당')) 
	 