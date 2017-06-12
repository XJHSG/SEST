using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Article_Roster_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            conn.Open();
            cmd.CommandText = "select * from classes where isclass=1";
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Repeater1.DataSource = rd;
                Repeater1.DataBind();
                rd.Close();
            }
        }*/
        Random r = new Random();
        Image1.ImageUrl = "images/random/V" + (r.Next(12) + 1) + ".jpg";
        MyDatabind2();
        if (!string.IsNullOrEmpty(Request.QueryString["c"]) && string.IsNullOrEmpty(Request.QueryString["ID"]))
        {
            CategoryLabel.Text = CategoryHyperLink.Text  = Request.QueryString["c"].Trim();
            CategoryHyperLink.NavigateUrl = "Article_List3.aspx?c=" + Request.QueryString["c"].Trim();
            MyInit();
        }
    }

    private void MyInit()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            SqlDataReader rd = null;
            string CategoryID = "0";
            cmd.CommandText = "select ID,Description,Subs,IsShow from Cats where CatName = @CatName";
            cmd.Parameters.AddWithValue("@CatName", CategoryLabel.Text);
            conn.Open();
            rd = cmd.ExecuteReader();

            int subs = 0;
            if (rd.Read())
            {
                CategoryID = rd["ID"].ToString();
                CategoryIDLabel.Text = CategoryID;
                DescriptionLabel.Text = rd["Description"].ToString();
                subs = Convert.ToInt16(rd["Subs"]);
            }
            rd.Close();

            cmd.CommandText = "select ID,SubName,CatName from Subs where Valid = 1 and CatID = " + CategoryID + " Order By Orders Desc";
            rd = cmd.ExecuteReader();
            Repeater2.DataSource = rd;
            Repeater2.DataBind();
            rd.Close();


        }
    }

    private void MyDatabind2()
    {
        string sql = "select * from Classes where IsClass=1";
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            //cmd.CommandText = "select * from Classes where IsClass=1";
            //cmd.CommandText = "select Classes.Period from Classes group by Period having Period>0";
            cmd.CommandText = "select Classes.Period as period1  from Classes group by Period having Period>0 order by period1 desc";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            RepeaterOrder1.DataSource = rd;
            RepeaterOrder1.DataBind();
            rd.Close();
            conn.Close();
        }
    }
}