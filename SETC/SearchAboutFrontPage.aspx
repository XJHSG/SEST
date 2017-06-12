<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.master" AutoEventWireup="true" CodeFile="SearchAboutFrontPage.aspx.cs" Inherits="SearchAboutFrontPage" %>

<%@ Register Src="~/SearchControl/SearchContains.ascx" TagPrefix="uc1" TagName="SearchContains" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="list ">
        <div class="row">
                <!----- 右边----->
              <div class="col-lg-9 col-md-9 col-sm-12 col-lg-push-3 col-md-push-3 col-sm-push-0">
<%--              <p> 当前位置>>   <asp:Label CssClass="CatalogTitle" ID="titleLabel" runat="server"></asp:Label>  >>搜索结果</p>
                         <!--  查找内容内容-->
 <h6>      <asp:Label  ID="descriptionLabel" runat="server"></asp:Label>  </h6>--%>


    <uc1:SearchContains ID="SearchContains1" runat="server" />


                </div>



            <!----- 左边---->
               <div class="col-lg-3 col-md-3 col-sm-4  col-lg-pull-9 col-md-pull-9 col-sm-pull-8 sidebar" style="background: white;" id="sidebar">
                <div style="padding-bottom: 20px; padding-top: 2px;">
                    <asp:Image ID="Image1" runat="server" Width="93%" Height="60" />
                </div>

                    <div class="my-box">
                    <a class="banner" href="#" style="opacity: 1;">
                        <i class="icons icon-link icons-fadeout"></i><i class="icons icon-link"></i>
                        <h4>友情链接</h4>
                        <br />
                    </a>

                    <div class="my-box-content">
                                <p><a href="http://www.gdin.edu.cn" target="_blank">1、广东技术师范学院</a></p>
                                <p><a href="http://setc.gdin.edu.cn:9000/" target="_blank">2、数字传媒实验中心</a></p>
                                <p><a href="http://202.192.72.100:88/cbxy/" target="_blank">3、综合测评管理系统</a></p>
                                <p><a href="http://www.edu.cn" target="_blank">4、中国教育与科研计算机网</a></p>
                                <p><a href="http://www.gdhed.org.cn" target="_blank">5、广东省教育厅</a></p>
                                <p><a href="http://www.moe.gov.cn" target="_blank">6、中华人民共和国教育部</a></p>
                    </div>

                </div>
                <div style="padding-bottom: 20px; padding-top: 20px; padding-left: 3px;">
                    <div style="width: 92%">
                        <img src="images/h/h5.jpg" height="60" />
                    </div>
                </div>
                <div class="my-box">
                    <a class="banner" href="#" style="opacity: 1;">
                        <i class="icons icon-phone icons-fadeout"></i><i class="icons icon-phone"></i>
                        <h4>联系我们</h4>
                        <br />
                    </a>

                    <div class="my-box-content">
                        <p class="strong">教育技术与传播学院</p>
                        <p class="strong">教育技术中心</p>
                        <p>地址：广州市天河区中山大道西293号实验楼505</p>
                        <p>邮编：510665</p>
                        <p>电话：020-38256633</p>
                        <p>邮箱：21646523@QQ.com</p>
                        <br />
                    </div>

                </div>


                   </div>




            </div>
    </div>























   
</asp:Content>

