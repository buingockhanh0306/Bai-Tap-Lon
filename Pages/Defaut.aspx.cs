using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


namespace BaiTapLon2.Pages
{
    public partial class Defaut : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbPage.Text = Request.QueryString["TenChuDe"];
            }       
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "chonmua")
            {
                ArrayList giocu = (ArrayList)Session["gio_hang"];
                Label gia = (Label)e.Item.FindControl("Label1");
                //int dongia = Convert.ToInt32(gia.Text);
                Session["so_tien"] = (int)Session["so_tien"] ;
                //int index = Convert.ToInt32(e.CommandArgument);
                Gio_Hang hangmoi = new Gio_Hang();
                hangmoi.Ms = Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex].ToString());
                hangmoi.Tensach = ((HyperLink)e.Item.FindControl("lbl_tensach") as HyperLink).Text;
                //hangmoi.Dongia = dongia;
                hangmoi.Soluong = 1;

                int n = kiemtratontai(hangmoi.Ms);
                if (n < 0)
                {
                    giocu.Add(hangmoi);
                }
                else
                {
                    Gio_Hang nhaphang = (Gio_Hang)giocu[n];
                    nhaphang.Soluong = nhaphang.Soluong + 1;
                }
                Session["gio_hang"] = giocu;
                Response.Redirect(Request.RawUrl);
            }
        }
        public int kiemtratontai(int ms)
        {
            ArrayList giocu = (ArrayList)Session["gio_hang"];
            for (int i = 0; i < giocu.Count; i++)
            {
                Gio_Hang hang = (Gio_Hang)giocu[i];
                if (hang.Ms == ms)
                    return i;
            }
            return -1;
        }
    }
    }