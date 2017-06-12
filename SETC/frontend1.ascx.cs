using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class frontend1 : System.Web.UI.UserControl
{
    public string CatMenuID { set; get; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MyInit();
        }
    }

    private void MyInit()
    {

        string sql = "select ID,SubMenuName,Href,ToLinkArticleID from SubMenu where CatMenuID = " + CatMenuID + " Order by Orders asc";
        using (SqlConnection conn = (SqlConnection)new DB().GetConnection())
        {
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();
        }
        //using (SqlConnection conn = (SqlConnection)new DB().GetConnection())
        //{
        //    SqlCommand cmd = conn.CreateCommand();
        //    cmd.CommandText = "select ID,SubMenuName,Href from SubMenu";
        //    conn.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    Repeater1.DataSource = rd;
        //    Repeater1.DataBind();
        //    rd.Close();
        //}

    }

}

