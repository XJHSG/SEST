using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class SubMenu_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["RoleID"] == null || Session["UserID"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "Login2.aspx");
            }
            else
            {
                int RoleID = Convert.ToInt16(Session["RoleID"].ToString());
                if (RoleID > 1)
                {
                    Util.ShowMessage("对不起，你无权访问该页面！", "User_Center.aspx");

                }
                else
                {
                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from CatMenu order by Orders asc";
                        conn.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        Cats.DataSource = rd;
                        Cats.DataValueField = "ID";
                        Cats.DataTextField = "CatMenuName";
                        Cats.DataBind();
                        rd.Close();
                    }
                }


            }
        }
    }
    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        int i;

        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into SubMenu (SubMenuName,Valid,Href,CatMenuName,CatMenuID,Orders) ");
            sb.Append(" values ( @SubMenuName,@Valid,@CatMenuName,@CatMenuID,@Orders,@Href) ");
            conn.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@SubMenuName", SubName.Text);
            cmd.Parameters.AddWithValue("@Orders", Orders.Text);
            cmd.Parameters.AddWithValue("@CatMenuName", Cats.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Href", Href.Text);
            cmd.Parameters.AddWithValue("@CatMenuID", Cats.SelectedValue);
            string radiobuttonvalue = "";
            if (true1.Checked)
            {
                radiobuttonvalue = true1.Text;
            }
            else if (false1.Checked)
            {
                radiobuttonvalue = false1.Text;
            }
            cmd.Parameters.AddWithValue("@Valid", radiobuttonvalue);



            i = cmd.ExecuteNonQuery();
            conn.Close();
            if (i == 1)
            {
                Response.Write("<script language='javascript'> alert('操作成功');window.location='CatMenu_Man.aspx';</script>");
            }
            else
            {
                Response.Write("<script language='javascript'> alert('操作失败，请重试！');window.location='CatMenu_Man.aspx';</script>");
            }

            //Response.Write("<script language='javascript'> alert('操作成功');</script>");

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CatMenu_Man.aspx");
    }

}
