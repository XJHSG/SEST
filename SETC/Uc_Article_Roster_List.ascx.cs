using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Uc_Article_Roster_List : System.Web.UI.UserControl
{

    public string PeriodYear{ set; get; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MyInit();
        }
    }

    private void MyInit()
    {
        string sql = "select * from Classes from where Period = " + PeriodYear + "and IsClass=1";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            //cmd.CommandText = "select * from Classes where Period = " + PeriodYear + "and IsClass=1";
            cmd.CommandText = "select * from Classes where IsClass=1 and Period = "+PeriodYear;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();
            conn.Close();
        }
    }
}