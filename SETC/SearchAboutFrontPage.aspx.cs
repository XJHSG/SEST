using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchAboutFrontPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Random r = new Random();
        Image1.ImageUrl = "images/random/V" + (r.Next(12) + 1) + ".jpg";

        // fill the table contents
        string searchString = Request.QueryString["Search"];
        //titleLabel.Text = "全文检索";
        //descriptionLabel.Text = "您输入的搜索词为 \"" + searchString + "\"";
        //// set the title of the page
        this.Title = SearchConfiguration.SiteName +
                   " : 搜索结果 : " + searchString;
    }

    //protected void OrderByViewtimes_SelectedIndexChanged(object sender, EventArgs e)
    //{
     
    //}

  
   
}