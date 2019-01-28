TSQL 綀習
=======

##使用工具
------

*   Visual Studio 2017
*   ASP.NET MVC5
*   Sql Server 2014 Express
*   Entity Framework
*   Bootstrap

##系統擷圖
------

1.訂單查詢
======

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/1_Order_1.jpg)

2.訂單查詢(依日期展開)
=============

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/1_Order_2_usp_GetOrderReport.jpg)

3.訂單查詢(依日期展開並含每日合計)
===================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/1_Order_3_usp_GetOrderReportV2.jpg)

4.訂單查詢PIVOT(依日期展開)
==================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/1_Order_4_usp_GetOrderReport_PIVOT.jpg)

1.員工專長查詢
========

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/2_Specialty_1.jpg)

2.員工專長查詢(新增專長順序)
================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/2_Specialty_2_usp_GetSpecialtyReport.jpg)

3.員工專長查詢(依專長數量展開)
=================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/2_Specialty_3_usp_GetSpecialtyReportV2.jpg)

4.員工專長查詢(專長較多員工排列在前)
====================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/2_Specialty_4_usp_GetSpecialtyReportV3.jpg)

訂單查詢(依日期展開)：usp_GetOrderReport
==============================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/3_Order_2_usp_GetOrderReport.jpg)

訂單查詢(依日期展開並含每日合計)：usp_GetOrderReportV2
======================================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/3_Order_3_usp_GetOrderReportV2.jpg)

訂單查詢PIVOT(依日期展開)：usp\_GetOrderReport\_PIVOT
===========================================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/3_Order_4_usp_GetOrderReport_PIVOT.jpg)

員工專長查詢(新增專長順序)：usp_GetSpecialtyReport
=====================================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/4_Specialty_2_usp_GetSpecialtyReport.jpg)

員工專長查詢(依專長數量展開)：usp_GetSpecialtyReportV2
========================================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/4_Specialty_3_usp_GetSpecialtyReportV2.jpg)

員工專長查詢(專長較多員工排列在前)：usp_GetSpecialtyReportV3
===========================================

![](https://raw.githubusercontent.com/ismeihchen/Image/master/Image/Images/TSQL/4_Specialty_4_usp_GetSpecialtyReportV3.jpg)

##參考資料
------

*   sql案例解析 以sql server與oracle為例(第9章-範例)[https://www.books.com.tw/products/CN10795847](https://www.books.com.tw/products/CN10795847)
*   跟著實務學習ASP.NET MVC：第一次寫MVC就上手(第7章-範例程式)[https://www.books.com.tw/products/0010776836](https://www.books.com.tw/products/0010776836)
*   mrkt 的程式學習筆記[http://kevintsengtw.blogspot.com/2013/03/entity-framework-stored-procedure.html](http://kevintsengtw.blogspot.com/2013/03/entity-framework-stored-procedure.html)

##T-SQL
-------

*   1.table及資料 [https://github.com/ismeihchen/TSQL/blob/master/prjTSQL/App\_Data/1\_TableAndData.sql](https://github.com/ismeihchen/TSQL/blob/master/prjTSQL/App_Data/1_TableAndData.sql)
*   2.StoredProcedure(訂單) [https://github.com/ismeihchen/TSQL/blob/master/prjTSQL/App\_Data/2\_StoredProcedure_Order.sql](https://github.com/ismeihchen/TSQL/blob/master/prjTSQL/App_Data/2_StoredProcedure_Order.sql)
*   2.StoredProcedure(員工專長) [https://github.com/ismeihchen/TSQL/blob/master/prjTSQL/App\_Data/3\_StoredProcedure_Specialty.sql](https://github.com/ismeihchen/TSQL/blob/master/prjTSQL/App_Data/3_StoredProcedure_Specialty.sql)