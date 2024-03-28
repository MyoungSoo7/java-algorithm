-- 코드를 작성해주세요
SELECT 
INFO.ITEM_ID,
INFO.ITEM_NAME,
INFO.RARITY
FROM ITEM_INFO INFO
WHERE INFO.ITEM_ID NOT IN(
    SELECT IT.PARENT_ITEM_ID
    FROM ITEM_TREE IT
    WHERE IT.PARENT_ITEM_ID IS NOT NULL
)
order by info.item_id desc