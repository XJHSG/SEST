﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_Article_Roster_List.ascx.cs" Inherits="Uc_Article_Roster_List" %>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
        <!-- Event -->

        <div class="Sublist">
            <%--<div style="border-bottom:1px dashed #eee;">--%>
            <div id="ItemIndex" style="float: left; width: 5%; ">
                <p><%# Container.ItemIndex + 1%> </p>
            </div>

            <div id="List-Title">
                <%--<p><a href='Article_View2.aspx?ID=<%# Eval("ID") %>'><%# Eval("Title") %></a></p>--%>
                <p><a href="Article_Roster_View.aspx?ID=<%#Eval("ID") %>"><%#Eval("ClassName") %></a></p>
            </div>

            <%--<div id="CDT" style="float: right; width: 30%; text-align: center;">
                <p><%# String.Format("{0:yyyy-MM-dd}",Eval("CDT") ) %></p>
            </div>--%>
        </div>
        <!-- /Event -->
    </ItemTemplate>

</asp:Repeater>