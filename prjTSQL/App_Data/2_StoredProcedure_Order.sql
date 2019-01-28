
CREATE PROCEDURE [dbo].[usp_GetOrderReport]
AS
BEGIN
 
-- 訂單數據表，分別以客戶姓名及訂單日期作為分類依據計算出應收帳款(A/R)的總金額
SELECT Cust_Name
      ,Order_Date
	  ,AR
      ,CASE WHEN Order_Date = '2009-08-01' THEN AR END "2009-08-01"
	  ,CASE WHEN Order_Date = '2009-08-02' THEN AR END "2009-08-02"
	  ,CASE WHEN Order_Date = '2009-08-03' THEN AR END "2009-08-03"
FROM (
		--每天、每個客戶匯總
		SELECT CONVERT(CHAR(10),Order_Date,120) AS Order_Date,Cust_Name,SUM(Qty * Price) AS AR 
		FROM Orders
		GROUP BY CONVERT(CHAR(10),Order_Date,120),Cust_Name
	 ) A
ORDER BY Cust_Name

 
END
GO

create PROCEDURE [dbo].[usp_GetOrderReport_PIVOT]
AS
BEGIN
 
-- 訂單數據表(PIVOT)，分別以客戶姓名及訂單日期作為分類依據計算出應收帳款(A/R)的總金額

SELECT Cust_Name
	  , "2009-08-01"
	  , "2009-08-02"
	  , "2009-08-03"
FROM (
		SELECT CONVERT(CHAR(10),Order_Date,120) AS Order_Date
			  ,Cust_Name
			  ,Qty * Price AS AR 
	    FROM Orders
		WHERE Order_Date BETWEEN '2009-08-01' AND '2009-08-04'	
) AS D 
PIVOT
(
	SUM(AR)
	FOR Order_Date
	    IN ([2009-08-01],[2009-08-02],[2009-08-03])
) AS P 

END

GO

CREATE PROCEDURE [dbo].[usp_GetOrderReportV2]
AS
BEGIN
 
-- 訂單數據表(包含每日合計)，分別以客戶姓名及訂單日期作為分類依據計算出應收帳款(A/R)的總金額

SELECT Cust_Name    
      ,MAX(CASE WHEN Order_Date = '2009-08-01' THEN AR END) AS "2009-08-01"
	  ,MAX(CASE WHEN Order_Date = '2009-08-02' THEN AR END) AS "2009-08-02"
	  ,MAX(CASE WHEN Order_Date = '2009-08-03' THEN AR END) AS "2009-08-03"
FROM (
		--每天、每個客戶匯總
		SELECT CONVERT(CHAR(10),Order_Date,120) AS Order_Date,Cust_Name,SUM(Qty * Price) AS AR 
		FROM Orders 
		WHERE Order_Date BETWEEN '2009-08-01' AND CAST('2009-08-03' AS datetime) + 1
		GROUP BY CONVERT(CHAR(10),Order_Date,120),Cust_Name

		UNION ALL
		--每天全部客戶匯總
		SELECT CONVERT(CHAR(10),Order_Date,120) AS Order_Date
			   ,NULL AS Cust_Name
			   ,SUM(Qty * Price) AS AR 
		FROM Orders
		WHERE Order_Date BETWEEN '2009-08-01' AND CAST('2009-08-03' AS datetime) + 1
		GROUP BY CONVERT(CHAR(10),Order_Date,120) 
	 ) A
GROUP BY Cust_Name
 
END

GO


