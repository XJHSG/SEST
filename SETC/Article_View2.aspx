﻿<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.master" AutoEventWireup="true" validateRequest="false" CodeFile="Article_View2.aspx.cs" Inherits="Article_View2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript" src="/js2/jquery.js"></script>
    <script>
        var jq = $.noConflict();
        jq("#a").click(function () {
            jq(this).html("aaaa");
        })
      
</script>
    <script type="text/javascript" src="/js2/jquery.PrintArea.js"></script>
<script src="/js2/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/ckeditor1/ckeditor.js"></script>
<script>
    $("#b").click(function () {
        $(this).html("bbbb");
    })
   
</script>
    <%-- 文章字体放大缩小js --%>
    <script>
        window.onload = function () {
          

            var cookieCount1 = {};
            cookieCount1.count1 = function () {
                var num = parseInt(this.getCount1('myCount1'));
              var oP = document.getElementById('ctl00_ContentPlaceHolder1_Content');
            var oBnt1 = document.getElementById('Abtn1');
            var oBnt2 = document.getElementById('Abtn2');
            var oBnt3 = document.getElementById('Abtn3');
                oBnt3.onclick = function () {
                    num = 14;
                    oP.style.fontSize = num + 'px';
                    document.cookie = 'myCount1=' + num + '';
                   
                }

                oBnt1.onclick = function () {
                    if (num < 22) {
                        num++;
                        oP.style.fontSize = num + 'px';
                        document.cookie = 'myCount1=' + num + '';
                      
                    }
                }
                oBnt2.onclick = function () {
                    if (num > 12) {
                        num--;
                        oP.style.fontSize = num + 'px';
                        document.cookie = 'myCount1=' + num + '';
                       
                    }
                }

               oP.style.fontSize = num + 'px'; 

            }

            cookieCount1.setCount1 = function () {
                //首先得创建一个名为myCount的cookie
                var expireDate = new Date();
                expireDate.setDate(expireDate.getDate() + 1);
                document.cookie = 'myCount1=' + '14' + ';expires=' + expireDate.toGMTString();
            }
            cookieCount1.getCount1 = function (countName1) {
                //获取名为计数cookie,为其加1
                var arrCookie = document.cookie.split('; ');
                var arrLength = arrCookie.length;
                var ini = true;
                for (var i = 0; i < arrLength; i++) {
                    if (countName1 == arrCookie[i].split('=')[0]) {
                        return parseInt(arrCookie[i].split('=')[1]);
                        break;
                    } else {
                        ini = false;
                    }
                }
                if (ini == false) this.setCount1();
                return 14;
            }
            cookieCount1.count1();
 };

    </script> 


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <!---- 文章图片的放大显示---------->
   <%-- <span id="span1"></span><span id="span2"></span>
     
    <div style="position:absolute;z-index:1000;  width:100%; text-align:center;">
    
    <div id="div1" style=" left:0px; width: 100%; position:relative;" onmousedown="mouseDown(this,event)"  
        onmousemove="mouseMove(event)" onmouseup="mouseUp(event)" > 
        <img src="#" id="p2" style="width:300px"/>
    </div>  
    </div>--%>
    <asp:TextBox ID="User_id" runat="server" Visible="False"></asp:TextBox>
    <div class="list2 ">
    <div class="row">
       
     
        <div class="col-lg-9 col-md-9 col-sm-12 col-lg-push-3 col-md-push-3 col-sm-push-0">
            <div class="row">
                <!----- 主体1111111-----> 
               
                <asp:Label ID="ArticleID" runat="server" Text="Label" Visible="false"></asp:Label>
                <asp:Label ID="ArticleRandomID" runat="server" Text="Label" Visible="false"></asp:Label>
               <asp:Label ID="AbsoluteUrl" runat="server"  Visible="false"></asp:Label>
                <div id="CurrentPosition">
                    当前位置：<a href="Index2.aspx">网站首页</a> >>
                    <asp:HyperLink ID="CategoryHyperLink" runat="server"></asp:HyperLink>
                    <asp:Label ID="SubLabel" runat="server" Text=""></asp:Label>
                    <asp:HyperLink ID="SubHyperLink" runat="server"></asp:HyperLink>
                    <p></p>
              
                  
                      </div>
            
                <p>&nbsp;</p>
             
   <div id="myPrintArea">
   
                <div class="ArticleTitle" style="color: #0097B3;">
                         <asp:Label ID="ArticleTitle" runat="server" Text="Label" Font-Bold="true" Font-Size="16"></asp:Label>
                </div>
                <br />
                <div class="ArticleTitle" style="color: #999;"> 
                    通讯员：<asp:Label ID="TagName" runat="server" Text="Label"></asp:Label>
                   <asp:Label ID="Author" runat="server" Text="Label"></asp:Label>&nbsp;丨&nbsp;
                    日期：<asp:Label ID="CDT" runat="server" Text="Label"></asp:Label>&nbsp;丨&nbsp;
                    浏览：<asp:Label ID="ViewTimes" runat="server" Text="Label"></asp:Label>&nbsp;丨&nbsp;<asp:Label ID="ReviewTimes" runat="server" Text="Label" Visible="false"></asp:Label>
                    点赞：<asp:Label ID="LikeTimes" runat="server" Text="0"></asp:Label>
                    <input id="Abtn2" type="button" value="A-" />
                    <input id="Abtn3" type="button" value="A" />
                    <input id="Abtn1" type="button" value="A+" />
                    <span id="biuuu_button" ><i class="icons icon-print-2" title="打印文本"></i></span>
               <br />
                   
                     </div>
      
                <div class="Articledashed"></div>

                <br />
              
                <div class="summary">
                 <asp:Panel ID="Panel1" runat="server" >
                     <%--margin-left:5%;--%>
                   <div class="summary2">
                        <p>简介：<asp:Label ID="Summary" runat="server" Text="Label" ></asp:Label></p>
                    </div>   
                     <br />
                     <%--<h4 style="float:left; margin: 10px;" > 简介：</h4>--%>
                </asp:Panel>
               </div>
                <div id="p1" class="view-content">
                    
                    <asp:Label ID="Content" runat="server" Text="Label" CssClass="font"></asp:Label>

                </div>

    </div>
                <%--附件--%>
                  <asp:Repeater ID="Repeater3" runat="server">
                      <ItemTemplate>
                        <p> 附件<%# Container.ItemIndex + 1%>： <a href='<%# Eval("FileURL") %>'> <%# Eval("FileName") %></a></p> 
                      </ItemTemplate>
                  </asp:Repeater>
                <br />
               <p class="ATag">  <asp:Label ID="Tag" runat="server" Text="文章标签：" Visible="false" Font-Size="16px" Font-Bold="true"></asp:Label></p>
                <p class="ATag">
                       <asp:Repeater ID="Repeater1" runat="server"> 
                        <ItemTemplate>
                            <a href='Article_ListbyTag.aspx?ID=<%# Eval("ArticleTagID") %>' > <%# Eval("ArticleTagName") %> </a>&nbsp; 
                        </ItemTemplate>
                       </asp:Repeater>
                </p>

                 <%--点赞功能--%>
                <div style="text-align:center; height:100px">
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                    <asp:Button ID="like1" class="heart9 " runat="server" rel="like" style="background: url(../images/web_heart_animation.png);" OnClick="like1_Click"/><asp:Label ID="Label1" runat="server" Text="赞(&nbsp; "></asp:Label>
                    <asp:Label  runat="server" class="likeCount" ID="likeCount1" Text="14" ></asp:Label><asp:Label ID="Label2" runat="server" Text="&nbsp; )" style="margin-right:35px"></asp:Label>
                       </ContentTemplate></asp:UpdatePanel>
                </div>
                <%--点赞功能end--%>

                <p style="clear:both"></p>
                <div style="text-align:center;position:center; margin-top:-20px; ">
                     <asp:Image ID="ImgCode" runat="server"  Width="80px"/><br /> 分享朋友圈
                    
                 </div>
                <p style="clear:both"></p>
            <hr style="height:10px;border:none;border-top:10px groove skyblue;" />
                <%--评论功能--%>
                <div id="CommentDiv" runat="server">
                <div id="NotLoggedIn" runat="server" style="background-color:#FFFFE1;padding:10px 0 10px 0;margin-top:40px;">
                    <h6 style="text-align:center;">登录后你可以发表评论，请先登录。<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登录>></asp:LinkButton></h6>
                </div>
                <div id="Write" runat="server" visible="false">
                <div id="CommentWrite">
                    <div class="col-lg-12">
                        <div style="height:100px">
                         <asp:TextBox ID="Editor1" runat="server" TextMode="MultiLine" />
                        <script type="text/javascript">
                            var editor = CKEDITOR.replace('<%= Editor1.ClientID %>', { height: "100px" });
                        </script></div>
                    </div>
                    <div style="clear:both"></div>
                    <div style="float: right; margin: 60px 0 5px 0; padding-right: 15px">
                        <%--验证码--%>
                        <script  type="text/javascript">
                            function reloadcode() {
                                document.getElementById('safecode').src = 'CreatePic.aspx?' + Math.random();
                            }
                        </script>
                            <asp:TextBox ID="ValidateCode" runat="server" placeholder="验证码" Width="120px"  MaxLength="30" CssClass="TextBox"></asp:TextBox>                 
                             <a href="javascript:reloadcode();" title="更换一张">
                             <img src="CreatePic.aspx" id="safecode"  alt="更换一张验证"  width="80"/></a>
                        <div style="display:inline-block;position:relative;top:5px;display:none;"><asp:CheckBox ID="CheckBox1" runat="server" Text="匿名发送" /></div>
                        <asp:Button ID="Publish" runat="server"  Text="发布" OnClick="Publish_Click"/>
                   </div>
                </div>
              </div>
<!--修饰部分省略-->
<div class="feedBack">
<!--留言列表 start-->
    <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
    <p style="clear:both"></p>
    <div id="CommentShow">
        <asp:Repeater ID="rptFeedBackList" runat="server" >
            <ItemTemplate>
                 <p style="clear:both"></p>
                <div class="col-md-12" >
                    <p><hr style="border:1px solid ; width:100%; color:#A67200 ; font-size:4px"/></p>
                    <div style="margin-right:15px; float:left">
                        <asp:Image ID="ImageAvatar" ImageUrl=<%#Eval("PublisherAvatar")%> runat="server" Height="80px" Width="80px" />
                        <p style="margin-top:-5px">&nbsp;&nbsp;<span style=" font-size:18px; color:#1277c1"><%#Eval("ShowName") %></span></p>
                    </div>                   
                    <div class="col-md-9">
                        <p><span style="color:#808080;">[<strong><%#Eval("PublishTime") %></strong>]</span></p>
                        <asp:Label ID="LabelContent" runat="server" Text='<%#Bind("Comment") %>'></asp:Label>                        
                        
                    </div>
                </div>
            </ItemTemplate>
  </asp:Repeater>
</div>
    <div style="clear: both"></div>
    <div id="Div1" runat="server">
        <h6 style="background-color: #FFFFE1; text-align: center; border: 1px solid #000000; padding: 10px 0px 10px 0px;">点击显示<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">所有评论>></asp:LinkButton></h6>
    </div>
    </div>
</ContentTemplate></asp:UpdatePanel>
    </div>
    <%--评论功能--%>









                <!-- JiaThis Button BEGIN -->
                <div class="jiathis_style" id="jiathis">
                    <%--<span class="jiathis_txt">分享到：</span>--%>
                    <a class="jiathis_button_tools_1"></a>
                    <a class="jiathis_button_tools_2"></a>
                    <a class="jiathis_button_tools_3 jiathis_my"></a>
                    <a class="jiathis_button_tools_4 jiathis_my "></a>
                    <%--<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>--%>
                    <a class="jiathis_counter_style jiathis_my"></a>
                </div>

                <%--<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>--%>
                <!-- JiaThis Button END -->

                <!-- JW Player Library -->
    <script type="text/javascript" src="/jwplayer/jwplayer.js"></script>
    <!-- JW HTML Config Library -->
    <script type="text/javascript" src="/jwplayer/jwplayer-html-config.min.js"></script>

                <br />
         
               



                    <%--相关文章--%>
                <div style="margin-top:0px;">
               <asp:Panel ID="Panel2" runat="server">
                    <div class="RelatedArticles">
                    <h4>相关文章</h4>       
                    </div>
                    <div class="RelatedArticles2"></div>
                  <asp:Repeater ID="rpt_message" runat="server">
                     <ItemTemplate>
                          <div class="Sublist2">
              <%--<div style="border-bottom:1px dashed #eee;">--%>
                            <div id="ItemIndex" style="float: left; width: 5%; ">
                                <p><%# Container.ItemIndex + 1%> </p>
                            </div>

                            <div id="List-Title">
                                <p><a href='Article_View2.aspx?ID=<%# Eval("ID") %>'><%# Eval("Title") %>  </a></p>
                            </div>
                              
                            <div id="CDT" style="float: right; width: 30%; text-align: center;">
                                <p><%# String.Format("{0:yyyy-MM-dd}",Eval("AuditedDateTime") ) %></p>
                            </div>
                           <%--</div>--%>
     
      
                                </div>

                     </ItemTemplate>
                 </asp:Repeater>
                   </asp:Panel>
                    </div>
                <!----- /主体----->
            </div>
        </div>


        <div id="sidebar" class="col-lg-3 col-md-3 col-sm-4  col-lg-pull-9 col-md-pull-9 col-sm-pull-8 sidebar" style="background: white;">
            <!----- 侧边栏22222---->
            <div style="padding-bottom: 20px; padding-top: 2px;">
                <asp:Image ID="Image1" runat="server" Width="93%" Height="60" />
            </div>

            <div class="my-box">
                <a class="banner" href="#" style="opacity: 1;">
                    <i class="icons icon-list icons-fadeout"></i><i class="icons icon-list"></i>
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
                                    <img src="/images/irow_o_r.gif" />
                                    <a href='Article_List4.aspx?ID=<%# Eval("ID") %>'><%# Eval("SubName") %></a>
                                </p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>



            <div style="padding-bottom: 20px; padding-top: 20px; padding-left: 3px;">
                <div style="width: 92%">
                    <img src="/images/h/h1.jpg" height="60"></div>
            </div>

            <div class="my-box">
                <a class="banner" href="#" style="opacity: 1;">
                    <i class="icons icon-link icons-fadeout"></i><i class="icons icon-link"></i>
                    <h4>友情链接</h4>
                    <br />
                </a>

                <div class="my-box-content">
                            <p style="width: 100%;"><a href="http://cpc.people.com.cn/" target="_blank">1、中国共产党官网</a></p>
                            <p><a href="http://www.gov.cn/" target="_blank">2、中央政府首页</a></p>
                            <p><a href="http://lxyz.people.cn/" target="_blank">3、中央党委两学一做官网</a></p>
                            <p><a href="http://dangjian.people.com.cn/" target="_blank">4、中国共产党新闻网党建栏目</a></p>
                             <p><a href="http://www.gdin.edu.cn/" target="_blank">5、广东技术师范学院官网</a></p>
                            <p><a href="http://setc.gdin.edu.cn:9000/" target="_blank">6、数字传媒实验中心</a></p>
                            <p><a href="http://202.192.72.100:88/cbxy/" target="_blank">7、综合测评管理系统</a></p>
                            <p><a href="http://www.edu.cn" target="_blank">8、中国教育与科研计算机网</a></p>
                            <p><a href="http://www.gdhed.org.cn" target="_blank">9、广东省教育厅</a></p>
                            <p><a href="http://www.moe.gov.cn" target="_blank">10、中华人民共和国教育部</a></p>
                            
                </div>

            </div>

            <div style="padding-bottom: 20px; padding-top: 20px; padding-left: 3px;">
                <div style="width: 92%">
                    <img src="images/h/h5.jpg" height="60" /></div>
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
    <%--打印--%>
    <script type="text/javascript">
        jq("#biuuu_button").click(function () {
           
            jq("#myPrintArea").printArea();

        });
</script>

   <%--点赞--%>
    <script type="text/javascript">
        $(document).ready(function () {

            $('body').on("click", '.heart9', function () {

                var A = $(this).attr("id");
                var B = A.split("like");
                var messageID = B[1];
                var C = parseInt($("#likeCount" + messageID).html());
                $(this).css("background-position", "")
                var D = $(this).attr("rel");

                if (D === 'like') {
                    $("#likeCount" + messageID).html(C + 1);
                    $(this).addClass("heartAnimation").attr("rel", "unlike");
                    $(this).css("background-position", "right");

                }
                else {
                    $("#likeCount" + messageID).html(C - 1);
                    $(this).removeClass("heartAnimation").attr("rel", "like");
                    
                }
            });
        });
</script>
<style type="text/css">
    .heart9 {
	    background: url(../images/web_heart_animation.png);
	    background-position: left;
	    background-repeat: no-repeat;
	    height: 70px;
	    width: 100px;
	    cursor: pointer;
        background-size:2900%;
        margin-right:-20px;
    }
    .heart9:hover, .heart9:focus{
    background-position: right;
	}

    @-webkit-keyframes heartBlast {
    0% {
	    background-position: left;
	}
	100% {
	    background-position: right;
	}
	}
	@keyframes heartBlast {
	    0% {
	    background-position: left;
	}
	100% {
	    background-position: right;
	}
	}
	.heartAnimation {
    display: inline-block;
    -webkit-animation-name: heartBlast;
    animation-name: heartBlast;
    -webkit-animation-duration: .8s;
    animation-duration: .8s;
    -webkit-animation-iteration-count: 1;
    animation-iteration-count: 1;
    -webkit-animation-timing-function: steps(28);
    animation-timing-function: steps(28);
    background-position: right;
    }
    .likeCount{font-family: 'Georgia', Times, Times New Roman, serif; margin-top: 32px;font-size: 25px;color: #999999}

    </style>

</asp:Content>
