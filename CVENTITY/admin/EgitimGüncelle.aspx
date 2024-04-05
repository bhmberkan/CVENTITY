<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="EgitimGüncelle.aspx.cs" Inherits="CVENTITY.admin.EgitimGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style="margin-left: 20px">
        <h3> Eğitim Güncelleme Sayfası</h3>
        <br />
        <asp:Label ID="Label1" runat="server" Text=" &nbsp; Bilgiler "></asp:Label>
        <br />  
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Bilgilerinizi Giriniz: / Ad Soyad:"></asp:TextBox>
        <br /><br />
         <asp:Label ID="Label2" runat="server" Text=" &nbsp; Eğitim Bilgileri "></asp:Label>
         <br />
           <asp:TextBox ID="TextBox2" TextMode="Multiline" Height="100px" runat="server" CssClass="form-control" placeholder="Eğitim Bilgilerini Giriniz :"></asp:TextBox>
         <br />
         <asp:Label ID="Label3" runat="server" Text=" &nbsp; İş Deneyimleri "></asp:Label>
         <br />
           <asp:TextBox ID="TextBox3" TextMode="Multiline" Height="100px" runat="server" CssClass="form-control" placeholder="İş Deneyimlerinizi Giriniz :"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success"  BackColor="#993366" OnClick="Button1_Click" />
    </div>

</asp:Content>
