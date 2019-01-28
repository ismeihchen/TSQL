
CREATE PROCEDURE [dbo].[usp_GetOrderReport]
AS
BEGIN
 
-- �q��ƾڪ�A���O�H�Ȥ�m�W�έq�����@�������̾ڭp��X�����b��(A/R)���`���B
SELECT Cust_Name
      ,Order_Date
	  ,AR
      ,CASE WHEN Order_Date = '2009-08-01' THEN AR END "2009-08-01"
	  ,CASE WHEN Order_Date = '2009-08-02' THEN AR END "2009-08-02"
	  ,CASE WHEN Order_Date = '2009-08-03' THEN AR END "2009-08-03"
FROM (
		--�C�ѡB�C�ӫȤ���`
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
 
-- �q��ƾڪ�(PIVOT)�A���O�H�Ȥ�m�W�έq�����@�������̾ڭp��X�����b��(A/R)���`���B

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
 
-- �q��ƾڪ�(�]�t�C��X�p)�A���O�H�Ȥ�m�W�έq�����@�������̾ڭp��X�����b��(A/R)���`���B

SELECT Cust_Name    
      ,MAX(CASE WHEN Order_Date = '2009-08-01' THEN AR END) AS "2009-08-01"
	  ,MAX(CASE WHEN Order_Date = '2009-08-02' THEN AR END) AS "2009-08-02"
	  ,MAX(CASE WHEN Order_Date = '2009-08-03' THEN AR END) AS "2009-08-03"
FROM (
		--�C�ѡB�C�ӫȤ���`
		SELECT CONVERT(CHAR(10),Order_Date,120) AS Order_Date,Cust_Name,SUM(Qty * Price) AS AR 
		FROM Orders 
		WHERE Order_Date BETWEEN '2009-08-01' AND CAST('2009-08-03' AS datetime) + 1
		GROUP BY CONVERT(CHAR(10),Order_Date,120),Cust_Name

		UNION ALL
		--�C�ѥ����Ȥ���`
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


