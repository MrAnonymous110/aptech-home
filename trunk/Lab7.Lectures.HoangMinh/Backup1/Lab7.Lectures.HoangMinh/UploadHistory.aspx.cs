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
            string s = Request.Cookies["Login"].ToString();
            if (s == null)
            {
                Response.Write("<script text = 'text/script'> alert('chua login...');</script>");
                Response.AddHeader("refresh", "5,Login.aspx");
            }
            else{
                Response.Write("<script text = 'text/script'> alert('" + Request.Cookies["userName"] + "');</script>");
            }
        }
    }
}
