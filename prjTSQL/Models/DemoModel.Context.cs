﻿//------------------------------------------------------------------------------
// <auto-generated>
//     這個程式碼是由範本產生。
//
//     對這個檔案進行手動變更可能導致您的應用程式產生未預期的行為。
//     如果重新產生程式碼，將會覆寫對這個檔案的手動變更。
// </auto-generated>
//------------------------------------------------------------------------------

namespace prjTSQL.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DemoEntities : DbContext
    {
        public DemoEntities()
            : base("name=DemoEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<Specialty> Specialty { get; set; }
    
        public virtual ObjectResult<usp_GetOrderReport_Result> usp_GetOrderReport()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_GetOrderReport_Result>("usp_GetOrderReport");
        }
    
        public virtual ObjectResult<usp_GetOrderReport_PIVOT_Result> usp_GetOrderReport_PIVOT()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_GetOrderReport_PIVOT_Result>("usp_GetOrderReport_PIVOT");
        }
    
        public virtual ObjectResult<usp_GetOrderReportV2_Result> usp_GetOrderReportV2()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_GetOrderReportV2_Result>("usp_GetOrderReportV2");
        }
    
        public virtual ObjectResult<usp_GetSpecialtyReport_Result> usp_GetSpecialtyReport()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_GetSpecialtyReport_Result>("usp_GetSpecialtyReport");
        }
    
        public virtual ObjectResult<usp_GetSpecialtyReportV2_Result> usp_GetSpecialtyReportV2()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_GetSpecialtyReportV2_Result>("usp_GetSpecialtyReportV2");
        }
    
        public virtual ObjectResult<usp_GetSpecialtyReportV3_Result> usp_GetSpecialtyReportV3()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_GetSpecialtyReportV3_Result>("usp_GetSpecialtyReportV3");
        }
    }
}
