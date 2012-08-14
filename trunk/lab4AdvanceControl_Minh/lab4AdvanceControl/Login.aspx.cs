using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace lab4AdvanceControl
{
    public partial class _Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            //SqlConnection cn = new SqlConnection(conStr);
            //if (cn.State == ConnectionState.Closed)
            //    cn.Open();
            string selectStr = string.Format("SELECT * FROM CustomerAccount WHERE AccountNumber='{0}' AND Password={1}", txtAcc.Text.Trim(), txtPass.Text);
            //SqlCommand command = new SqlCommand(selectStr, cn);
            //SqlDataReader reader = command.ExecuteReader();
            SqlDataAdapter adapter = new SqlDataAdapter(selectStr, conStr);
            DataTable table= new DataTable();
            adapter.Fill(table);
            if (table.Rows.Count==1)
            {
                Response.Redirect("Bankschoice.aspx");
            }
            else
                lblLogin.Visible = true;
            Session["ID"] = table.Rows[0]["AccountNumber"].ToString();
            Session["userName"] = table.Rows[0]["CustomerName"].ToString();
        }
    }
}
