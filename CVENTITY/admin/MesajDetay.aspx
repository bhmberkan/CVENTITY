<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="CVENTITY.admin.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div style="width:1300px; margin-left:70px">
        <h4>Mesaj Detayları</h4>
    <asp:TextBox id="TxtAdSoyad" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>
    <br />
    <asp:TextBox id="TxtMail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox id="TxtKonu" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox id="TxtMesaj" TextMode="Multiline" Height="100px" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

    </div>
    


</asp:Content>
