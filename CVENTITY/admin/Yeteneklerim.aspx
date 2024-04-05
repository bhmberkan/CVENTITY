<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="CVENTITY.admin.Yeteneklerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
        <tr>
            <th>ID</th>
            <th>YETENEK</th>
            <th>DERECE</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("YETENEK") %></td>
                    <td><%# Eval("DERECE") %></td>
                    <td>

                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/admin/YetenekSil.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink>

                    </td>

                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/admin/YetenekGüncelle.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-success ">Güncelle</asp:HyperLink>

                    </td>
                </tr>

            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="YeniYetenek.aspx" class="btn btn-primary" style="margin-left: 20px">Yeni yetenek ekle </a>
</asp:Content>
