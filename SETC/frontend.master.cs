using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ThoughtWorks.QRCode.Codec;
using ThoughtWorks.QRCode.Codec.Data;
using Winsteps.Validator;
using System.Data.SqlClient;

public partial class frontend : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //客户端弹出验证消息框
            //WinVal WinValInstance = new WinVal();
            //WinValInstance.ValStyle = "toppoptip";
            //WinValInstance.SetValidator();

            AbsoluteUrl.Text = Request.Url.AbsoluteUri;
            string con = PageOperate.GetNullToString(AbsoluteUrl.Text.Trim());
            if (con == "")
            {
                PageOperate.AlertAndRedirect("请填写内容", "Build.aspx");
                return;
            }
            if (ImgCode.ImageUrl == "")
            {
                ImgCode.ImageUrl = "/Handler.ashx?data=" + Server.HtmlEncode(con) + "&len=4";
            }
            if (Session["RoleID"] == null || Session["UserID"] == null)
            {
                Literal1.Text = "<a href='/Login2.aspx?u=0' target='_blank'>用户登录</a>";
                Literal2.Text = "<a href='/Register2.aspx' target='_blank'>用户注册</a>";
            }
            else
            {
                string username = "欢迎您，" + Convert.ToString(Session["UserName"]);
                Literal1.Text = "<a href='/User_Center.aspx?' target='_blank'>" + username + "</a>";
                Literal2.Text = "<a href='/login2.aspx' target='_blank'>退出</a>";
            }
            MyDataBind2();
        }
    }




    private void MyDataBind2()
    {
        // string sql = "select ID,CatName from Cats";
        using (SqlConnection conn = (SqlConnection)new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select ID,CatMenuName,Href,ToLinkArticleID from CatMenu where valid=1 Order by Orders asc";
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();
            rd.Close();
        }
    }
    override protected void OnInit(EventArgs e)
    {
        if (Cache != null)
        {
            IDictionaryEnumerator idE = Cache.GetEnumerator();
            while (idE.MoveNext())
            {
                if (idE.Key != null && idE.Key.ToString().Equals(Session.SessionID))
                {
                    //已经登录
                    if (idE.Value != null && "XXXXXX".Equals(idE.Value.ToString()))
                    {
                        
                        Cache.Remove(Session.SessionID);
                        Session["UserID"] = null;
                        Session["UserName"] = null;
                        Util.ShowMessage("您的帐号已在别处登陆，您被强迫下线！", "Login2.aspx");
                        Response.End();
                        
                    }
                    break;
                }
            }
        }

    }
}
