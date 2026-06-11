-- (b) 연도별 총 매출 -사용 개념 SUM()
-- 테이블명 : invoices

-- 내가 작성한 코드 
SELECT invoiceDate('%Y'),
        ROUND(SUM(Total), 2)
    FROM invoices
    GROUP BY InvoiceDate('%Y')

-- 정답
SELECT 
    InvoiceDate,
    strftime('%Y', InvoiceDate) AS 연도,
    ROUND(SUM(Total), 1)        AS 연매출
FROM invoices
GROUP BY 연도
;

-- 내가 없는 개념 
-- 1. strftime('%년월일시중하나', 날짜 정보가 나와있는 컬럼)
-- 2. group by 는 별칭으로도 묶을 수 있다.


