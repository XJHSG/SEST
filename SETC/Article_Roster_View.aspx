<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.master" AutoEventWireup="true" CodeFile="Article_Roster_View.aspx.cs" Inherits="Article_Roster_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .txt1 {
            text-align:center;
        }
        .div1 {
            margin-left:15px;
            margin-right:15px;
        }
        .box {
            border:solid 1px;
            width:93%;
        }
        .hasborder {
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="background:white">
        <div class="col-lg-9 col-md-9 col-sm-8 col-lg-push-3 col-md-push-3 col-sm-push-4">
            <div class="row">
                <div id="CurrentPosition">
                    当前位置：<a href="Index2.aspx">网站首页</a> >> 
                    <asp:HyperLink ID="CategoryHyperLink" runat="server"></asp:HyperLink>
                    <asp:Label ID="SubLabel" runat="server" Text=""></asp:Label>
                    <asp:HyperLink ID="SubHyperLink" runat="server"></asp:HyperLink>
                </div>
                <p>&nbsp;</p>
                
                <div class="txt1">
                    <asp:Label ID="ArticleTitle" runat="server" Text="Label" Font-Bold="true" Font-Size="16"></asp:Label>
                </div>
                <p>&nbsp;</p>
                <div class="txt1">
                    作者：<asp:Label ID="TagName" runat="server" Text="Label"></asp:Label>--<asp:Label ID="Author" runat="server" Text="Label"></asp:Label>&nbsp;|&nbsp;
   日期：<asp:Label ID="CDT" runat="server" Text="Label"></asp:Label>&nbsp;|&nbsp;
   浏览次数：<asp:Label ID="ViewTimes" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;<asp:Label ID="ReviewTimes" runat="server" Text="Label" Visible="false"></asp:Label>
                </div>
                <br />
                <div class="div1">
                    <asp:Label ID="Content" runat="server" Text="Label" CssClass="font"></asp:Label>
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="col-md-4">
                                    <div class="hasborder">
                                        <div class="profile-pic">
                                            <p>
                                                <asp:Image ID="ImageAvatar" runat="server" ImageUrl="~/Users/Avatars/20160807143202-796.jpg" />
                                            </p>
                                        </div>
                                        
                                    <p>
                                        <%--<asp:HyperLink ID="HyperLink1" runat="server" Text="<%#Eval("UserName") %>"></asp:HyperLink>--%>
                                        <a href="User_Space.aspx"><%# Eval("UserName") %></a>
                                    </p>
                                    </div> 
                                    <p>&nbsp;</p>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <!-- JiaThis Button BEGIN -->
                <div class="jiathis_style" id="enjoy">
                    <span class="jiathis_txt">分享到：</span>
                    <a class="jiathis_button_tools_1"></a>
                    <a class="jiathis_button_tools_2"></a>
                    <a class="jiathis_button_tools_3"></a>
                    <a class="jiathis_button_tools_4"></a>
                    <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
                    <a class="jiathis_counter_style"></a>
                </div>
                <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
                <!-- JiaThis Button END -->


            </div>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-4  col-lg-pull-9 col-md-pull-9 col-sm-pull-8 sidebar" style="background: white;">
            <p>&nbsp;</p>
            <div style="padding-bottom: 15px; padding-top: 2px;">
                <asp:Image ID="Image1" runat="server" Width="93%" Height="60" />
            </div>
            <!---- GridWiew1--->
            <div style="border: 2px solid double;" class="box">
                <a class="banner" href="#" style="opacity: 1;">
                    <i class="icons icon-calendar icons-fadeout"></i><i class="icons icon-calendar"></i>
                    <h4>
                        <asp:Label ID="CategoryLabel" runat="server" Text="Label"></asp:Label>
                    </h4>
                    <br />
                </a>
                <p>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="DescriptionLabel" runat="server" Text="Label"></asp:Label></p>

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div>
                            <p style="margin-left: 10px;">
                                <img src="images/irow_o_r.gif" />
                                <a href='Article_List4.aspx?ID=<%# Eval("ID") %>'><%# Eval("SubName") %></a>
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!---- /GridWiew1--->
            <div style="padding-bottom: 15px; padding-top: 15px;">
                <div style="width: 93%">
                    <img src="images/h/h1.jpg" height="60"></div>
            </div>

            <div class="box">
                <a class="banner" href="#" style="opacity: 1;">
                    <i class="icons icon-user icons-fadeout"></i><i class="icons icon-user"></i>
                    <h4>友情链接
               
                    </h4>
                    <br />
                </a>



                <p style="width: 100%;"><a href="http://www.gdin.edu.cn" target="_blank">&nbsp;&nbsp;1、广东技术师范学院</a></p>
                <p><a href="http://setc.gdin.edu.cn:9000/" target="_blank">2、数字传媒实验中心</a></p>
                <p><a href="http://202.192.72.100:88/cbxy/" target="_blank">3、综合测评管理系统</a></p>
                <p><a href="http://www.edu.cn" target="_blank">4、中国教育与科研计算机网</a></p>
                <p><a href="http://www.gdhed.org.cn" target="_blank">5、广东省教育厅</a></p>
                <p><a href="http://www.moe.gov.cn" target="_blank">6、中华人民共和国教育部</a></p>
                <p>&nbsp;</p>

            </div>

            <div style="padding-bottom: 15px; padding-top: 15px;">
                <div style="width: 93%">
                    <img src="images/h/h5.jpg" height="60" /></div>
            </div>
            <div class="box">
                <a class="banner" href="#" style="opacity: 1;">
                    <i class="icons icon-user icons-fadeout"></i><i class="icons icon-user"></i>
                    <h4>联系我们
               
                    </h4>
                    <br />
                </a>

                <p class="strong">教育技术与传播学院</p>
                <p class="strong">教育技术中心</p>
                <p>地址：广州市天河区中山大道西293号实验楼505</p>
                <p>邮编：510665</p>
                <p>电话：020-38256633</p>
                <p>邮箱：21646523@QQ.com</p>
                <br />

            </div>
            <p>&nbsp;</p>

        </div>
    </div>
</asp:Content>

