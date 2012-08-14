using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Lab7.Lectures.HoangMinh
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            SqlConnection Cn = new SqlConnection(conStr);
            SqlCommand Cm = new SqlCommand();
            Cn.Open();
            Cm.CommandType = System.Data.CommandType.StoredProcedure;
            Cm.Connection = Cn;
            Cm.CommandText = "AuthenUser";
            Cm.Parameters.Add("user", SqlDbType.VarChar, 30).Value = txtUser.Text;
            Cm.Parameters.Add("pass", SqlDbType.VarChar, 15).Value = txtPass.Text;
            SqlDataReader reader = Cm.ExecuteReader();
            if (reader.HasRows)
            {
                if (CheckBox1.Checked && !IsPostBack)
                {
                    HttpCookie ckLogin = new HttpCookie("Login");
                    ckLogin.Values["User"] = txtUser.Text;
                    ckLogin.Values["pass"] = txtPass.Text;
                    Response.Cookies.Add(ckLogin);
                }
                Response.Redirect("UploadHistory.aspx");
            }
            else
            {
                lblStatus.Text = "Login Fail";
            }
            Cn.Close();
            reader.Close();
        }
    }

}

