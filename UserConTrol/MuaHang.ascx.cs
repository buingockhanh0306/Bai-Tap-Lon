using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace BaiTapLon2.UserConTrol
{
    public partial class MuaHang : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                hienthi();
            }    
        }
        private void hienthi()
        {
            GridView1.DataSource = Session["gio_hang"];
            GridView1.DataBind();
            int soluong = 0;
            ArrayList giocu = (ArrayList)Session["gio_hang"];
            for (int i = 0; i < giocu.Count; i++)
            {
                Gio_Hang hang = (Gio_Hang)giocu[i];
                soluong = soluong + hang.Soluong;
            }
            lbl_soluong.Text = soluong.ToString();
            lbl_thanhtien.Text = tongtien().ToString();
        }
        decimal tongtien()
        {
            decimal tien = 0;
            ArrayList giohang = (ArrayList)Session["gio_hang"];
            for (int i = 0; i < giohang.Count; i++)
            {
                Gio_Hang gio = (Gio_Hang)giohang[i];
                tien = tien + gio.Thanhtien;
            }
            return tien;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ArrayList giocu = (ArrayList)Session["gio_hang"];
            Gio_Hang hang = (Gio_Hang)giocu[e.RowIndex];
            giocu.Remove(hang);
            //for (int i = 0; i < giocu.Count; i++)
            //{
            //    Gio_Hang hang = (Gio_Hang)giocu[i];
            //    if (hang.Ms == ms)
            //    {
            //        giocu.Remove(hang);
            //    }
            //}
            Session["gio_hang"] = giocu;
            Session["so_tien"] = tongtien();
            hienthi();
            Response.Redirect(Request.RawUrl);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            hienthi();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            hienthi();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ArrayList giocu = (ArrayList)Session["gio_hang"];
            Gio_Hang hang = (Gio_Hang)giocu[e.RowIndex];
            TextBox txt_sl = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
            hang.Soluong = int.Parse(txt_sl.Text);
            Session["gio_hang"] = giocu;
            Session["so_tien"] = tongtien();
            GridView1.EditIndex = -1;
            hienthi();
        }
    }
}
