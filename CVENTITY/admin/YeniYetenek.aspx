<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="CVENTITY.admin.YeniYetenek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-left: 20px">
        <h3>Yeni Yetenek Ekleme Sayfası</h3>
        <br />
        <asp:Label ID="Label1" runat="server" Text=" &nbsp; Yetenek "></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yeteneği giriniz"></asp:TextBox>
        <br />
          <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Yetenek Puanı/100 giriniz"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Yetenek ekle" CssClass="btn btn-info" OnClick="Button1_Click" />
    </div>

</asp:Content>
