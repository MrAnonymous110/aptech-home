using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7.Lectures.HoangMinh
{
    public partial class UploadHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Login"] == null)
            {
                Response.Write("<script text = 'text/script'> alert('chua login...');</script>");
                Response.Write("wait 5 second to redirect...");
                Response.AddHeader("refresh", "5,Login.aspx");
            }
            else{
                lblUserName.Text =  "welcome: "+Request.Cookies["Login"].Values[0];
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Request.Cookies.Remove("Login");
            Response.Redirect("Login.aspx");
        }
    }
}
