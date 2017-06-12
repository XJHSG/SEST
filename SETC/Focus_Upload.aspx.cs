using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Data.SqlClient;
using System.IO;  

public partial class Focus_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["RoleID"] == null || Session["UserID"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
            }
            else
            {
                  int RoleID = Convert.ToInt16(Session["RoleID"].ToString());
                  if (RoleID > 2)
                  {
                      Util.ShowMessage("对不起，你无权访问该页面！", "User_Center.aspx");

                  }
                  else
                  {
                      ExtensionLabel.Text = ConfigurationManager.AppSettings["PhotoExtension"].ToString();
                  }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                string fileName = FileUpload1.FileName;
                string extension = System.IO.Path.GetExtension(fileName).ToLower();
                string allowExtension = ConfigurationManager.AppSettings["PhotoExtension"].ToString();
                if (allowExtension.Contains(extension))
                {
                    //文件名
                    string filename1 = fileName.Substring(fileName.LastIndexOf("\\") + 1);
                    //取得后缀名
                    string suffix = filename1.Substring(filename1.LastIndexOf("."));
                    //定义上传路径(在当前目录下的uploadfile文件下）
                    string uploadpath = this.Server.MapPath("upload/Focus");
                
                    System.IO.Stream oStream = this.FileUpload1.PostedFile.InputStream;
                    System.Drawing.Image oImage = System.Drawing.Image.FromStream(oStream);
                    int oWidth = oImage.Width; //原图宽度   
                    int oHeight = oImage.Height; //原图高度
                    int tWidth = 600; //设置缩略图初始宽度   
                    int tHeight = 180; //设置缩略图初始高度  
                    //按比例计算出缩略图的宽度和高度   
                    if (oWidth >= oHeight)
                    {
                        tHeight = (int)Math.Floor(Convert.ToDouble(oHeight) * (Convert.ToDouble(tWidth) / Convert.ToDouble(oWidth)));
                    }
                    else
                    {
                        tWidth = (int)Math.Floor(Convert.ToDouble(oWidth) * (Convert.ToDouble(tHeight) / Convert.ToDouble(oHeight)));
                    }
                    //生成缩略原图   
                    Bitmap tImage = new Bitmap(600, tHeight);
                    Graphics g = Graphics.FromImage(tImage);
                    g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High; //设置高质量插值法   
                    g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;//设置高质量,低速度呈现平滑程度   
                    g.Clear(Color.Transparent); //清空画布并以透明背景色填充   
                    g.DrawImage(oImage, new Rectangle(0, 0, tWidth, tHeight), new Rectangle(0, 0, oWidth, oHeight), GraphicsUnit.Pixel);
                    //创建一个图像对象取得上传图片对象
                    //缩略图的保存路径
                    string fileXltPath = uploadpath + "\\" + filename1.Replace(suffix, "x" + suffix);
                    string fileXltPath2 = "upload/Focus/" + filename1.Replace(suffix, "x" + suffix);
                    //保存缩略图
                    tImage.Save(fileXltPath, System.Drawing.Imaging.ImageFormat.Jpeg);  
                    
                   
                    string now = DateTime.Now.ToString("yyyyMMdd_HHmmss");
                    string number = String.Format("{0:0000}", new Random().Next(1000));//生产****四位数的字符串
                    string physicalName = "upload/Focus/" + Session["UserID"].ToString() + "_" + now + "_" + number + extension;
                    //int fileSize = FileUpload1.PostedFile.ContentLength / 1024 ;
                    //if (fileSize == 0) fileSize = 1;                   
                    FileUpload1.SaveAs(Server.MapPath(physicalName));
                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "insert into Focuses( PhotoSrc,UserID,UserName,Thumbnail ) values( @PhotoSrc,@UserID,@UserName,@Thumbnail )";
                        cmd.Parameters.AddWithValue("@PhotoSrc", physicalName);
                        cmd.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                        cmd.Parameters.AddWithValue("@UserName", Session["UserName"].ToString());
                        cmd.Parameters.AddWithValue("@Thumbnail", fileXltPath2);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }

                    Response.Redirect(Server.HtmlEncode("Focus_Man.aspx"));


                }
                else
                {
                    ResultLabel.Text = "上传图片格式错误！";
                    ResultLabel.Visible = true;
                }
            }
            catch (Exception exc)
            {
                ResultLabel.Text = "上传图片失败。请重试！或者与管理员联系！<br>" + exc.ToString();
                ResultLabel.Visible = true;
            }
        }
        else
        {
            ResultLabel.Text = "所选图片格式不符合要求";
            ResultLabel.Visible = true;
        }

    }

  

}