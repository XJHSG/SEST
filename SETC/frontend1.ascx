
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frontend1.ascx.cs" Inherits="frontend1" %>

<%--<asp:GridView ID="GridView1" DataKeyNames="ID" runat="server" AutoGenerateColumns="false"  
    GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center">
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
    <HeaderStyle HorizontalAlign="Center" />
    <Columns>
        
        <asp:HyperLinkField DataNavigateUrlFields="ID,SubMenuName"
            DataNavigateUrlFormatString="SubMenu_Edit.aspx?ID={0}&T={1}" DataTextField="SubMenuName"></asp:HyperLinkField>       
    </Columns>
</asp:GridView>--%>
<asp:Repeater ID="Repeater1" runat="server">
       <ItemTemplate>         
       <li><a href=<%# Link.ToMenu(Eval("ToLinkArticleID").ToString(),Eval("Href").ToString(),Eval("SubMenuName").ToString()) %>><%# Eval("SubMenuName") %></a></li>                                        
        </ItemTemplate>
</asp:Repeater>
