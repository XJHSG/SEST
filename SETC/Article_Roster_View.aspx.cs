using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Article_Roster_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from users";
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Repeater1.DataSource = rd;
                Repeater1.DataBind();
                rd.Close();
            }
        }
    }
}