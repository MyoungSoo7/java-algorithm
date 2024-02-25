-- 코드를 입력하세요
SELECT P.PRODUCT_CODE,
    SUM(SALES_AMOUNT) * P.PRICE AS SALES
FROM PRODUCT P
INNER JOIN OFFLINE_SALE OS ON P.PRODUCT_ID = OS.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE ASC;
