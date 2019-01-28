using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using prjTSQL.Models;

namespace prjTSQL.Controllers
{
    public class SpecialtyController : Controller
    {
        DemoEntities db = new DemoEntities();
        
        public ActionResult Index()
        {
            //1.員工專長查詢
            var result = db.Specialty.ToList();     
            return View(result);
        }

        public ActionResult SpecialtyReport()
        {
            //2.員工專長查詢(新增專長順序)
            var result = db.usp_GetSpecialtyReport().ToList();
            return View(result);
        }

        public ActionResult SpecialtyReportV2()
        {
            //3.員工專長查詢(依專長數量展開)
            var result = db.usp_GetSpecialtyReportV2().ToList();
            return View(result);
        }

        public ActionResult SpecialtyReportV3()
        {
            //4.員工專長查詢(專長較多員工排列在前)
            var result = db.usp_GetSpecialtyReportV3().ToList();
            return View(result);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}