using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BaiTapLon2.UserConTrol
{
    public partial class SachMoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            string strCon = @"Data Source=.\BUIKHANH;Initial Catalog=QLBanSach;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strCon);
            conn.Open();
            string strSql = "select top (5) Ten_sach, Ms from dbo.SACH order by[Ngay_cap_nhat] desc";
            SqlDataAdapter objAdapter = new SqlDataAdapter(strSql, conn);
            DataSet dsSach = new DataSet();
            DataTable dtSachMoi = dsSach.Tables.Add();
            objAdapter.Fill(dtSachMoi);
            GridView2.DataSource = dtSachMoi;
            GridView2.DataBind();
            conn.Close();

        }
    }
}