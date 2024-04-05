<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="EgitimHayatim.aspx.cs" Inherits="CVENTITY.admin.EgitimHayatim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:30px; margin-right:100px">
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
       
        <tr>
            <%--<th>ID</th>--%>
            <th>BİLGİLER</th>
            <th>EGİTİM</th>
            <th>İŞ DENEYİMLERİ</th>
            <th>İŞLEMLER</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <%--<td><%# Eval("ID") %></td>--%>
                    <td><%# Eval("BILGILER") %></td>
                    <td><%# Eval("EGITIM") %></td>
                    <td><%# Eval("ISDENEYIMLERI") %></td>

                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/admin/EgitimGüncelle.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-success  " BackColor="#993366">Güncelle</asp:HyperLink>

                    </td>
                </tr>

            </ItemTemplate>
        </asp:Repeater>

    </table>
    </div>
    
</asp:Content>
