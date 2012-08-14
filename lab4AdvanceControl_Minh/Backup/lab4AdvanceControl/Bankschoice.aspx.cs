using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace lab4AdvanceControl
{
    public partial class Bankschoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            string selectStr = "SELECT * FROM BranchesList";
            SqlDataAdapter adapter = new SqlDataAdapter(selectStr,conStr);
            DataTable table = new DataTable();
            adapter.Fill(table);

            PolygonHotSpot PolColorado = new PolygonHotSpot();
            //PolColorado.HotSpotMode = HotSpotMode.PostBack;
            PolColorado.PostBackValue = table.Rows[1]["BranchID"].ToString();
            PolColorado.AlternateText = "Colorado";
            PolColorado.Coordinates = "144,128,203,133,200,180,137,172";
            imgMap.HotSpots.Add(PolColorado);

            PolygonHotSpot PolNewMexico = new PolygonHotSpot();
            imgMap.HotSpots.Add(PolNewMexico);
            PolygonHotSpot PolKanSas = new PolygonHotSpot();
            imgMap.HotSpots.Add(PolKanSas);

            imgMap.HotSpotMode = HotSpotMode.PostBack;
        }

        protected void imgMap_Click(object sender, ImageMapEventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            SqlConnection cn = new SqlConnection(conStr);
            if (cn.State == ConnectionState.Closed)
                cn.Open();
            string selectStr = string.Format("SELECT * FROM CustomerAccount WHERE BranchID = {0}",e.PostBackValue);
            SqlCommand command = new SqlCommand(selectStr, cn);
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            lblAddress.Text = reader.GetString(1);
        }
    }
}
