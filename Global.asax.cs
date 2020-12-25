using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Collections;

namespace BaiTapLon2
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["so_tien"] = 0;
            Session["gio_hang"] = new ArrayList();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["online"] = (int)Application["online"] - 1;
            Session["ForceLogOut"] = null;
            Session["xoagh"] = null;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}