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
    public partial class SachBanChay : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = @"Data Source=.\BUIKHANH;Initial Catalog=QLBanSach;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strCon);
            conn.Open();
            string strSql = "select top(5) s.Ten_sach, dh.Sdh from SACH as s inner join CT_DAT_HANG as dh on s.Ms = dh.Ms order by[Sdh] desc";
            SqlDataAdapter objAdapter = new SqlDataAdapter(strSql, conn);
            DataSet dsSach = new DataSet();
            DataTable dtSachMoi = dsSach.Tables.Add();
            objAdapter.Fill(dtSachMoi);
            GridView1.DataSource = dtSachMoi;
            GridView1.DataBind();
            conn.Close();
        }
    }
}