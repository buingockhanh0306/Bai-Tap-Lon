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
    public partial class FormLogin : System.Web.UI.UserControl
    {
        class KiemTraDangNhap
        {
            public int CheckLogin(string username, string password)
            {
                AccessData acc = new AccessData();
                SqlDataReader reader = acc.ExecuteReader("select Ten_dang_nhap, Mat_khau, Mkh from dbo.KHACH_HANG");
                while (reader.Read())
                {
                    if (reader[0].ToString() == username && reader[1].ToString() == password)
                    {          
                        return 1;
                    }
                }
                return 0;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            KiemTraDangNhap dn = new KiemTraDangNhap();
            if (dn.CheckLogin(tbUser.Text, tbPass.Text) == 1)
            {
                Session["UserName"] = tbUser.Text;
                Session["Role"] = 1;               
                Response.Redirect(@"~/Pages/Defaut.aspx");                            
            }
            else
            {
                lbThongBao.Text = "Bạn đã nhập sai Tên người dùng hoặc Mật khẩu!";
            }
        }

    }
}