using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            lblUsername.Text = "welcome:" + Session["user"];
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        HttpCookie ckLogin = new HttpCookie("Login");
        ckLogin.Expires = DateTime.Now;
        Response.Cookies.Add(ckLogin);
        Response.Redirect("Login.aspx");
    }
}
