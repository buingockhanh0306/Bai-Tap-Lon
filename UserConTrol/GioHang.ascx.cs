using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLon2.UserConTrol
{
    public partial class GioHang1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["so_tien"] == null)
            {
                lbSoTien.Text = "0";
            }
            else
                lbSoTien.Text = Session["so_tien"].ToString();          
        }
    }
}