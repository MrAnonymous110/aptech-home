using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    int i = 5;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            lblRemaindLogin.Text = "redirect page login in " + i + " seconds...";
            Response.AddHeader("refresh", "5,Login.aspx");
        }
    }

    protected void timerDirect_Tick(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            lblRemaindLogin.Text = "redirect page login in " + (i--) + " seconds...";
        }
    }
}
