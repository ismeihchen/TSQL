using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using prjTSQL.Models;

namespace prjTSQL.Controllers
{
    public class OrderController : Controller
    {
        DemoEntities db = new DemoEntities();
         
        public ActionResult Index()
        {
            //1.訂單查詢
            var result = db.Orders.ToList();
            return View(result);
        }

        public ActionResult OrderReport()
        {
            //2.訂單查詢(依日期展開)
            var result = db.usp_GetOrderReport().ToList();
            return View(result);
        }

        public ActionResult OrderReportV2()
        {
            //3.訂單查詢(依日期展開並含每日合計)
            var result = db.usp_GetOrderReportV2().ToList();
            return View(result);
        }

        public ActionResult OrderReportPIVOT()
        {
            //4.訂單查詢PIVOT(依日期展開)
            var result = db.usp_GetOrderReport_PIVOT().ToList();
            return View(result);
        }


        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}