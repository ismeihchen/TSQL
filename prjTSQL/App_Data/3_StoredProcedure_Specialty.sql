
CREATE PROCEDURE [dbo].[usp_GetSpecialtyReport]
AS
BEGIN
 
-- 員工專長 ROW_NUMBER()
SELECT EmpName
		,Major
		,ROW_NUMBER() OVER (PARTITION BY EmpName ORDER BY Major) AS FldIdx 
FROM Specialty

 
END

GO

CREATE PROCEDURE [dbo].[usp_GetSpecialtyReportV2]
AS
BEGIN
 
-- 員工專長 ROW_NUMBER()，依Major數量展開

SELECT EmpName
	  ,Major
	  ,FldIdx
	  ,CASE WHEN FldIdx=1 THEN Major END Fld1
	  ,CASE WHEN FldIdx=2 THEN Major END Fld2
	  ,CASE WHEN FldIdx=3 THEN Major END Fld3
FROM (
		SELECT EmpName
			  ,Major
			  ,ROW_NUMBER() OVER (PARTITION BY EmpName ORDER BY Major) AS FldIdx 
	    FROM Specialty
) AS A

END

GO

CREATE PROCEDURE [dbo].[usp_GetSpecialtyReportV3]
AS
BEGIN
 
-- 顯示員工專長，專長較多員工排列在前

SELECT EmpName	 
	  ,MAX(CASE WHEN FldIdx=1 THEN Major END) Fld1
	  ,MAX(CASE WHEN FldIdx=2 THEN Major END) Fld2
	  ,MAX(CASE WHEN FldIdx=3 THEN Major END) Fld3
	  ,COUNT(*) AS FldCount 
FROM (
		SELECT EmpName
			  ,Major
			  ,ROW_NUMBER() OVER (PARTITION BY EmpName ORDER BY Major) AS FldIdx 
	    FROM Specialty
) AS A 
GROUP BY EmpName
ORDER BY COUNT(*) DESC 


END

GO


