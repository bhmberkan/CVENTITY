<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="YetenekGüncelle.aspx.cs" Inherits="CVENTITY.admin.YetenekGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div style="margin-left: 20px">
        <h3> Yetenek Güncelleme Sayfası</h3>
        <br />
        <asp:Label ID="Label1" runat="server" Text=" &nbsp; Yetenek "></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="yetenek"></asp:TextBox>
        <br />
           <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Derece"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" />
    </div>
</asp:Content>
