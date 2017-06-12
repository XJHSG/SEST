<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Space.aspx.cs" Inherits="User_Space" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人空间</title>
    <link href="css3/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css3/style.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header">
            <div class="container">
                <div class="header-profile">      
<asp:Image ID="Image1" runat="server" ImageUrl="~/images/UserSpace/profile.png" />   
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="header-top">
                <p>&nbsp;</p>
                <h2>
                    <asp:Label ID="LabelTrueName1" runat="server" Text="LabelTrueName1"></asp:Label></h2>
                <p>&nbsp;</p>
                <small>
                    <asp:Label ID="LabelMotto" runat="server" Text="LabelMotto"></asp:Label></small>
                <p>&nbsp;</p>
            </div>
        </div>       
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">基本信息</div>
                <p>&nbsp;</p>
                <p>&nbsp; 以下是个人基本信息</p>
                <p>&nbsp;</p>
                <div class="panel-body">
                    <ul class="p-info">
                        <li>
                            <div class="title">姓名</div>
                            <div class="desk">
                                <asp:Label ID="LabelTrueName" runat="server" Text="LabelTrueName"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div class="title">用户名</div>
                            <div class="desk">
                                <asp:Label ID="LabelUserName" runat="server" Text="LabelUserName"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div class="title">邮箱</div>
                            <div class="desk">
                                <asp:Label ID="LabelEmail" runat="server" Text="LabelEmail"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div class="title">电话</div>
                            <div class="desk">
                                <asp:Label ID="LabelTel" runat="server" Text="LabelTel"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div class="title">QQ</div>
                            <div class="desk">
                                <asp:Label ID="LabelQQ" runat="server" Text="LabelQQ"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div class="title">家乡</div>
                            <div class="desk">
                                <asp:Label ID="LabelHometown" runat="server" Text="LabelHometown"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div class="title">住址</div>
                            <div class="desk">
                                <asp:Label ID="LabelAddress" runat="server" Text="LabelAddress"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div class="title">主页</div>
                            <div class="desk">
                                <asp:Label ID="LabelHomepage" runat="server" Text="LabelHomepage"></asp:Label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-8">
            <div class="panel panel-success">
                <div class="panel-heading">个人经历</div>
                <p>&nbsp;</p>
                <p>&nbsp; 以下是个人经历</p>
                <p>&nbsp;</p>
                <div class="panel-body">
                    <asp:Label ID="Label1" runat="server" Text="先后在河南省视窗文化传播公司、北京欢乐时代游戏公司、清华美院动画研究室（与日本ARUZE株式会社合办）担任美术制作，曾赴日本东京研修电子游戏美术制作。2009年任职于广东技术师范学院教育技术与传播学院，担任专业教师，
                        先后在河南省视窗文化传播公司、北京欢乐时代游戏公司、清华美院动画研究室（与日本ARUZE株式会社合办）担任美术制作，曾赴日本东京研修电子游戏美术制作。2009年任职于广东技术师范学院教育技术与传播学院，担任专业教师，
                        先后在河南省视窗文化传播公司、北京欢乐时代游戏公司、清华美院动画研究室（与日本ARUZE株式会社合办）担任美术制作，曾赴日本东京研修电子游戏美术制作。2009年任职于广东技术师范学院教育技术与传播学院，担任专业教师，
"></asp:Label>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">获得成就</div>
                <p>&nbsp;</p>
                <p>&nbsp; 以下是个人成就</p>
                <p>&nbsp;</p>
                <div class="panel-body">
                    <asp:Label ID="Label2" runat="server" Text="参与学术课题项目：
    “211”三期重点学科建设项目，“数字媒体技术与艺术”子项目“中国传统造型石雕像绘画再创作”；北京市哲学社会科学规划项目，“北京画家村现状与可发展空间研究”；《动画高考指南》文字编辑，中国传媒大学出版社；《电视包装类课程整合研究与实践》第一 广东技术师范学院校级教改项目2011 在研。
发表的论文：
    《中国动画民族文化学研究》，中国动画年鉴，2006年；《走出电子游戏“概念化”的误区》，四川理工学院学报，2009年第2期；《剧情动画在电子游戏中的作用》第一 2010-12广东技术师范学院学报；《蒂姆.波顿哥特式动画电影解读》 独撰 2011-7清远职业技术学院学报；《解构历史纪录片虚拟现实包装的意象表现》第一 2012-8湖北广播电视大学学报；《教育型电子游戏动画创作规范与案例设计》第一 2011-3广东技术师范学院学报；《走出电子游戏“概念化”的误区》独撰 2009-4四川理工学院学报；参与撰写书籍一部。

"></asp:Label>
                </div>
            </div>
        </div>
    </div>
        <div>
            <footer class="panel-footer">
                欢迎使用泽氏个人空间
            </footer>
        </div>
        <%--<div class="profile-pic">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/UserSpace/帅哥.jpg" /></div>--%>
    </form>
</body>
</html>
