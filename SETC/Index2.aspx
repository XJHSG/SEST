<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.master" AutoEventWireup="true" CodeFile="Index2.aspx.cs" Inherits="Index2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <script>
          $(document).ready(function () {
              $(".hisrc img").hisrc();
              $(".hisrc img+img+img").hisrc({ minwidth: 800 });
          })
  </script>   
    <style type="text/css">
	img {
		width: 100%;
	}
 </style>
<section id="content">
    <section class="section full-width-bg full-width-slider-section">

        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12">

                <!-- Revolution Slider -->
                <div class="tp-banner-container main-revolution">

                    <span class="Apple-tab-span"></span>

                    <div class="tp-banner full-width-revolution hisrc">

                        <ul>
                            <asp:Repeater ID="Repeater1" runat="server"> 
                                <ItemTemplate>
                                    <li data-transition="papercut" data-slotamount="7">
                                
                                        <img src='<%# Eval("Thumbnail") %>' alt='<%# Eval("PhotoTitle") %>' data-hisrc='<%# Eval("PhotoSrc") %>' />
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>

                    </div>

                </div>
                <!-- /Revolution Slider -->

            </div>                  

        </div>

    </section>

    <!-- Section -->
    <section class="section full-width-bg gray-bg">
        <div class="my-bg">
        <div class="row">

            <div class="col-lg-8 col-md-8 col-sm-12">
                <div class="media-filters animate-onscroll">
                    <h3 class="my-title animate-onscroll no-margin-top">Ñ§Ôº¶¯Ì¬</h3>
                    <div class="carousel-arrows animate-onscroll">
                            <a href='/Article-List-5-学院动态.html' >¸ü¶à>></a>
                    </div>
                </div>
                <asp:Repeater ID="Repeater5" runat="server"> 
                <ItemTemplate>
                <!-- Blog Post -->
                <div class="blog-post big animate-onscroll">

                    <div class="post-image">
                        <img src='<%# Eval("CoverImageURL") %>' alt="">
                    </div>

                    <h4 class="post-title"><a href=<%# Link.ToArticles(Eval("ID").ToString()) %>><%# Eval("Title") %></a> </h4>

                    <div class="post-meta">
                        <span>×÷Õß£º<a href="#"><%# Eval("TagName") %></a></span><span>ÈÕÆÚ£º<%# String.Format("{0:yyyy-MM-dd}",Eval("CDT") ) %></span></div>

                    <p><%# Eval("Summary ") %></p>

                    <a href='Article_View2.aspx?ID=<%# Eval("ID") %>' class="button read-more-button big button-arrow">ÏêÏ¸</a>

                </div>
                <!-- /Blog Post -->                
                <div style="margin-bottom:10px;"></div>
                </ItemTemplate>
                </asp:Repeater>
            </div>



            <!-- Sidebar -->
            <div class="col-lg-4 col-md-4 col-sm-12 animate-onscroll">
                
                <!-- Tabs -->
                <div class="tabs">

                    <div class="tab-header">
                        <ul>
                            <li><a href="#tab11">
                                <h6>Ñ§ÉúÔ°µØ</h6>
                            </a></li>&nbsp;&nbsp;
                            <li><a href="#tab22">
                                <h6>½ÌÊ¦Í¨Öª</h6>
                            </a></li>
                        </ul>
                    </div>

                    <div class="tab-content">

                        <div id="tab11" class="tab"><div class="box">
                            <ul class="upcoming-events">
                                <asp:Repeater ID="Repeater3" runat="server"> 
                                <ItemTemplate>
                                <!-- Event -->
                                <li>
                                    <div class="date">
                                        <span>
                                            <span class="day"><%# Container.ItemIndex + 1%> </span>
                                        </span>
                                    </div>

                                    <div class="event-content">
                                        <h6> <a href=<%# Link.ToArticles(Eval("ID").ToString()) %>><%# Eval("Title") %></a>   </h6>
                                        <ul class="event-meta">
                                            <li><i class="icons icon-clock"></i> <%# String.Format("{0:yyyy-MM-dd}",Eval("CDT") ) %>&nbsp;&nbsp;¡¾<%# Eval("SubName") %>¡¿</li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- /Event -->
                                </ItemTemplate>
                                </asp:Repeater>
                                

                            </ul>
                            <div style="float:right;"><p><a href="/Article_List2/13/Ñ§ÉúÔ°µØ.html">¸ü¶à >></a></p></div>
                        </div></div>

                        <div id="tab22" class="tab">
                            <div class="box">
                            <ul class="upcoming-events">
                                <asp:Repeater ID="Repeater4" runat="server"> 
                                <ItemTemplate>
                                <!-- Event -->
                                <li>
                                    <div class="date">
                                        <span>
                                            <span class="day"><%# Container.ItemIndex + 1%> </span>
                                        </span>
                                    </div>

                                    <div class="event-content">
                                        <h6> <a href=<%# Link.ToArticles(Eval("ID").ToString()) %>><%# Eval("Title") %></a></h6>
                                        <ul class="event-meta">
                                            <li><i class="icons icon-clock"></i> <%# String.Format("{0:yyyy-MM-dd}",Eval("CDT") ) %></li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- /Event -->
                                </ItemTemplate>
                                </asp:Repeater>
                                

                            </ul>
                            <div style="float:right;"><p><a href="/Article_List/6/½ÌÊ¦Í¨Öª.html">¸ü¶à >></a></p></div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- /Tabs -->
            </div>
            <!-- /Sidebar -->

            
                </div>
                
                <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
						
					<div class="my-media-items row">
							
                        <div class="col-lg-4 col-md-4 col-sm-12 animate-onscroll">
						
						    <h3 class="my-title1">»î¶¯¼ôÓ°</h3>
                            <div class="carousel-arrows animate-onscroll">
                                <a href="/Article_List/39/»î¶¯¼ôÓ°.html" >¸ü¶à>></a>
                            </div>
						
							<!-- Accordions -->
						    <ul class="accordions">
								
                                <asp:Repeater ID="Repeater6" runat="server"> 
                                <ItemTemplate>
							    <!-- Accordion -->
							    <li class="accordion">
								
								    <div class="accordion-header">
									    <div class="accordion-icon"></div>
									     <a href=<%# Link.ToArticles(Eval("ID").ToString()) %>><%# Eval("Title") %></a>
									
								    </div>
								
								    <div class="accordion-content">
									    <p><%# Eval("Summary ") %><a style="float:right;" href='Article_View2.aspx?ID=<%# Eval("ID") %>'>ÏêÏ¸>></a></p>
                                        
								    </div>
								
							    </li>
							    <!-- /Accordion -->
							    </ItemTemplate>
                                </asp:Repeater>
							    
							
						    </ul>
						    <!-- /Accordions -->						
					    </div>

                                <div class="col-lg-8 col-md-8 col-sm-12 col-lg-push-0 col-md-push-0 col-sm-push-0">
												
						            <!-- Banner Rotator -->
						            <div class="banner-rotator animate-onscroll">
							
							            <div class="flexslider banner-rotator-flexslider">
								
								            <ul class="slides">
									
									            <li id="flex_rotator_1">
										            <div class="banner-rotator-content">
											            <h5>Àí¿Æ</h5>
											            <h2>½ÌÓý¼¼ÊõÑ§</h2>
											            <span class="date">£¨Ê¦·¶£©</span>
											            <a href="Article_View2.aspx?ID=135" class="button big button-arrow">ÏêÏ¸</a>
										            </div>
									            </li>
									
									            <li id="flex_rotator_2">
										            <div class="banner-rotator-content">
											            <h5>ÒÕÊõÀà</h5>
											            <h2>¹ã²¥µçÊÓ±àµ¼</h2>
											            <span class="date">£¨·ÇÊ¦·¶£©</span>
											            <a href="Article_View2.aspx?ID=136" class="button big button-arrow">ÏêÏ¸</a>
										            </div>
									            </li>
									
									            <li id="flex_rotator_3">
										            <div class="banner-rotator-content">
											            <h5>Àí¿Æ</h5>
											            <h2>Êý×ÖÃ½Ìå¼¼Êõ</h2>
											            <span class="date">£¨Ê¦·¶/·ÇÊ¦·¶£©</span>
											            <a href="Article_View2.aspx?ID=137" class="button big button-arrow">ÏêÏ¸</a>
										            </div>
									            </li>

                                                <li id="flex_rotator_4">
										            <div class="banner-rotator-content">
											            <h5>ÎÄÀí¼æÕÐ</h5>
											            <h2>ÍøÂçÓëÐÂÃ½Ìå</h2>
											            <span class="date">£¨·ÇÊ¦·¶£©</span>
											            <a href="Article_View2.aspx?ID=794" class="button big button-arrow">ÏêÏ¸</a>
										            </div>
									            </li>
									
								            </ul>
								
							            </div>
						
						            </div>
						            <!-- /Banner Rotator -->						
						
					            </div>
							
						    </div>
						
						
					    </div>
                    </div>    

                </div>



        <div class="my-bg">
        <div class="row no-margin-bottom">


            <div class="col-lg-12 col-md-12 col-sm-12">


                <!-- Owl Carousel -->
                <div class="owl-carousel-container">

                    <div class="owl-header">

                        <h3 class="my-title animate-onscroll">×÷Æ·Õ¹Ê¾</h3>
                        
                        <div class="carousel-arrows animate-onscroll">
                            <span class="left-arrow"><i class="icons icon-left-dir"></i></span>
                            <span class="right-arrow"><i class="icons icon-right-dir"></i></span>
                            <a href="Article_List3.aspx?c=×÷Æ·Õ¹Ê¾" >¸ü¶à>></a>
                        </div>

                    </div>

                    <div class="owl-carousel" data-max-items="4">

                        <asp:Repeater ID="Repeater2" runat="server"> 
                        <ItemTemplate>
                        <!-- Owl Item -->
                        <div>

                            <!-- Blog Post -->
                            <div class="blog-post animate-onscroll">

                                <div class="post-image">
                                    <img src='<%# Eval("CoverImageURL") %>' alt="">
                                </div>

                                <h4 class="post-title"><a href='Article_View2.aspx?ID=<%# Eval("ID") %>&c=<%# Eval("SubName") %>&T=<%# Eval("Title") %>'><%# Eval("Title") %></a></h4>

                                <div class="post-meta">
                                    <span>×÷Õß£º <a href="#"><%# Eval("Author") %></a></span>
                                    <span>ÈÕÆÚ£º <%# String.Format("{0:yyyy-MM-dd}",Eval("CDT") ) %></span>
                                </div>

                                <p><%# Eval("Summary") %></p>

                                <a href='Article_View2.aspx?ID=<%# Eval("ID") %>&c=<%# Eval("SubName") %>&T=<%# Eval("Title") %>' class="button read-more-button big button-arrow">ÏêÏ¸</a>

                            </div>
                            <!-- /Blog Post -->

                        </div>
                        </ItemTemplate>
                        </asp:Repeater>
                        <!-- /Owl Item -->
                        

                    </div>

                </div>
                <!-- /Owl Carousel -->
            </div>



        </div>
        </div>

    </section>
    <!-- /Section -->
</section>

</asp:Content>

