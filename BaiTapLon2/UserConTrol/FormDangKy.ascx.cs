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
    public partial class FormDangKy : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        class AccessData
        {
            public SqlConnection GetConnection()
            {
                return new SqlConnection(@"Data Source=.\BUIKHANH;Initial Catalog=QLBanSach;Integrated Security=True");
            }
            public void ExcuteNonQuery(string sql)
            {
                SqlConnection conn = GetConnection();
                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                cmd.Dispose();
            }
            public SqlDataReader ExecuteReader(string sql)
            {
                SqlConnection conn = GetConnection();
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                return reader;
            }
        }
        class KiemTraTaiKhoan
        {
            public int CheckLogin(string username)
            {
                AccessData acc = new AccessData();
                SqlDataReader reader = acc.ExecuteReader("select Ten_dang_nhap from dbo.KHACH_HANG");
                while (reader.Read())
                {
                    if (reader[0].ToString() == username)
                    {
                        return 0;
                    }
                }
                return 1;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=.\BUIKHANH;Initial Catalog=QLBanSach;Integrated Security=True");
                int Gioitinh = 0, quyen = 0;
                if (rdoNam.Checked == true)
                    Gioitinh = 1;
                SqlCommand cmd = new SqlCommand("insert into [dbo].[KHACH_HANG](Ho_ten, Dia_chi, Dien_thoai, Ten_dang_nhap, Mat_khau, Ngay_sinh, Gioi_tinh, Email, Quyen)" +
                    " values('" + tbHoten.Text + "' , '" + tbDiachi.Text + "' , '" + tbSdt.Text + "' , '" + tbUser.Text + "', '" + tbPass.Text + "' , '" + DateTime.ParseExact(tbNgaysinh.Text, "ddMMyyyy", System.Globalization.CultureInfo.CurrentCulture) + "' , '" + Gioitinh + "' , '" + tbEmail.Text + "','" + quyen + "')", con);
                KiemTraTaiKhoan tk = new KiemTraTaiKhoan();
                if (tk.CheckLogin(tbUser.Text) == 1)
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Đăng ký thành công!')</script>");      
                }
                else
                {
                    lbThongbao.Text = "Tên đăng nhập đã tồn tại!";
                }
                con.Close();
            }
            catch(Exception)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Đã có lỗi xảy ra!')</script>");
            }
        }
    }
}