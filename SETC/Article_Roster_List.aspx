<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.master" AutoEventWireup="true" CodeFile="Article_Roster_List.aspx.cs" Inherits="Article_Roster_List" %>

<%@ Register TagPrefix="UserControl" TagName="Uc_Article_Roster_List" Src="~/Uc_Article_Roster_List.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="list">
        <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-12 col-lg-push-3 col-md-push-3 col-sm-push-0">
                <div class="row">
                    <!----- 主体1111111----->
                    <asp:Label ID="CategoryIDLabel" runat="server" Text="Label" Visible="false"></asp:Label>
                    <div id="CurrentPosition">
                        当前位置：<a href="Index2.aspx">网站首页</a> 
                       
                        <asp:HyperLink ID="CategoryHyperLink" runat="server"></asp:HyperLink>
                        <asp:HyperLink ID="SubHyperLink" runat="server"></asp:HyperLink>
                    </div>

                    <!-- 显示主栏目列表 -->
                    <asp:Panel ID="Panel2" runat="server">
                            <div class="Order" style="position: relative;">
                                <asp:Repeater ID="RepeaterOrder1" runat="server">
                                    <ItemTemplate>
                                        <div style="margin-top: 5px;">
                                            <ul class="accordions">
                                                <li>
                                                    <div class="accordion-header2">          
                                                        <h3><%#Eval("Period1")%>届</h3>          
                                                    </div>
                                                    <div class="accordion-content2">
                                                        <div class="row">
                                                            <div class="row">
                                                                <usercontrol:Uc_Article_Roster_List id="Uc_Article_Roster_List" runat="server" PeriodYear='<%# Eval("Period1") %>' />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>          
                    </asp:Panel>

                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-4  col-lg-pull-9 col-md-pull-9 col-sm-pull-8 sidebar" style="background: white;" id="sidebar">
                <!----- 侧边栏22222---->
                <div style="padding-bottom: 20px; padding-top: 2px;">
                    <asp:Image ID="Image1" runat="server" Width="93%" Height="60" />
                </div>
                <div class="my-box">
                    <a class="banner" href="#" style="opacity: 1;">
                        <i class="icons icon-calendar icons-fadeout"></i><i class="icons icon-calendar"></i>
                        <h4>
                            <asp:Label ID="CategoryLabel" runat="server" Text="Label"></asp:Label>
                        </h4>
                        <br />
                    </a>
                    <div class="my-box-content">
                        <p><asp:Label ID="DescriptionLabel" runat="server" Text="Label"></asp:Label></p>

                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <div>
                                    <p>
                                        <img src="images/irow_o_r.gif" />
                                        <a href='Article_List4.aspx?ID=<%# Eval("ID") %>'><%# Eval("SubName") %></a>
                                    </p>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>




                <div style="padding-bottom: 20px; padding-top: 20px;padding-left:3px;">
                    <div style="width: 92%">
                        <img src="images/h/h1.jpg" height="60"></div>
                </div>

                <div class="my-box">
                    <a class="banner" href="#" style="opacity: 1;">
                        <i class="icons icon-calendar icons-fadeout"></i><i class="icons icon-calendar"></i>
                        <h4>荣誉榜</h4>
                        <br />
                    </a>
                    <div class="my-box-content">
                        <p class="strong"><a href="#">● 教育技术学—广东省综合教学改革试点项目</a></p>
                        <p class="strong"><a href="#">● 数字传媒实验中心—广东省实验教学示范中心</a></p>
                        <p class="strong"><a href="#">● 广师视频—大学生影视制作实践基地</a></p>
                        <br />
                    </div>
                </div>
                <div style="padding-bottom: 20px; padding-top: 20px;">
                    <div style="width: 92%">
                        <img src="images/h/h3.jpg" height="60" /></div>
                </div>
                <div class="my-box">
                    <a class="banner" href="#" style="opacity: 1;">
                        <i class="icons icon-user icons-fadeout"></i><i class="icons icon-user"></i>
                        <h4>友情链接</h4>
                        <br />
                    </a>

                    <table width="100%" align="center">
                        <tr>
                            <td align="left">
                                <p><a href="http://www.gdin.edu.cn" target="_blank">1、广东技术师范学院</a></p>
                                <p><a href="http://setc.gdin.edu.cn:9000/" target="_blank">2、数字传媒实验中心</a></p>
                                <p><a href="http://202.192.72.100:88/cbxy/" target="_blank">3、综合测评管理系统</a></p>
                                <p><a href="http://www.edu.cn" target="_blank">4、中国教育与科研计算机网</a></p>
                                <p><a href="http://www.gdhed.org.cn" target="_blank">5、广东省教育厅</a></p>
                                <p><a href="http://www.moe.gov.cn" target="_blank">6、中华人民共和国教育部</a></p>
                            </td>
                        </tr>
                    </table>

                </div>
                <div style="padding-bottom: 20px; padding-top: 20px;">
                    <div style="width: 92%">
                        <img src="images/h/h5.jpg" height="60" /></div>
                </div>
                <div class="my-box">
                    <a class="banner" href="#" style="opacity: 1;">
                        <i class="icons icon-calendar icons-fadeout"></i><i class="icons icon-calendar"></i>
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

