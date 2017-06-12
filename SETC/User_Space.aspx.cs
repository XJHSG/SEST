using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Space : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MyInit();
        }
    }

    private void MyInit()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            string sql = "select * from Profile1 where ID=1";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                LabelTrueName.Text = rd["TrueName"].ToString();
                LabelUserName.Text = rd["UserName"].ToString();
                LabelEmail.Text = rd["Email"].ToString();
                LabelTel.Text = rd["Telphone"].ToString();
                LabelQQ.Text = rd["QQ"].ToString();
                LabelHometown.Text = rd["Hometown"].ToString();
                LabelHomepage.Text = rd["PersonalHomepage"].ToString();
                LabelAddress.Text = rd["Address"].ToString();
                LabelMotto.Text = rd["motto"].ToString();
                LabelTrueName1.Text = rd["TrueName"].ToString();
            }
            conn.Close();
        }
    }
}