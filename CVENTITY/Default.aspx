<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CVENTITY.Default" %>



<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Berkan Burak Turgut</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="../web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="../web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="../web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet"> 
    <!-- //online-fonts -->
</head>
<body>
    <div class="sidenav text-center" style=" background:  #a09999;" >
        <div class="side_top" >
            <img src="resimler/Asdasd.png" alt="news image" class="img-fluid navimg"/>
            <h1 class="top_hd mt-2"><a href="Login.aspx">Berkan Burak Turgut</a></h1>
            <p class="top_hdp mt-2">Bilgisayar Mühendisi</p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Ana Sayfa </a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Eğitim Hayatım</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Yeteneklerim</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">Deneyimlerim</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">İletişim</a></li>
                     
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
         <%--buradaki fotograf düzenlenecek--%> 
        
       <%-- <div class="banner-text-w3ls" id="home" style="background: url('../../resimler/IMG_20230822_182302-1.jpg') no-repeat bottom;">--%>
        <div class="banner-text-w3ls" id="home" style="background: url('../../resimler/banner1.jpg') no-repeat bottom;">
            <div class="container">
                <div class="mx-auto text-center">
                    <h3>Cv Sitesi

                    </h3>
                    <p class="banp mx-auto mt-3">
                        <asp:Repeater ID="Repeater1" runat="server">

                            <ItemTemplate>
                                <%# Eval("BILGILER") %>
                            </ItemTemplate>

                        </asp:Repeater>
                    </p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Hakkımda</a>
                </div>
            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4">Eğitim Hayatım </h2>

            <p class="iner mt-md-5">
                <asp:Repeater ID="Repeater2" runat="server">

                    <ItemTemplate>
                        <%# Eval("EGITIM") %>
                    </ItemTemplate>

                </asp:Repeater>
            </p>
        </section>
        <!-- //about -->
        <!-- services -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Yetenekler</h3>

                <ul class="list-unstyled mt-5">
                    <li>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <div class="row">
                            <div class="col-2 ic-lft">
                                <span class="fa fa-code"></span>
                            </div>
                            <div class="col-10">
                                <h6> <%# Eval("YETENEK") %></h6>
                                <br /> 
                            </div>
                        </div> 
                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </li>
                </ul>
            </div>
        </section>
        <!-- //services -->
        <!-- news -->
        <div class="news" id="news">
            <h3 class="w3_head mb-4 text-left">Demeyimlerim</h3>

            <div class="row news-grids-left mt-5">
                <asp:Repeater ID="Repeater3" runat="server">

                    <ItemTemplate>
                        <%# Eval("ISDENEYIMLERI") %>
                    </ItemTemplate>
                </asp:Repeater>



            </div>

        </div>
        <!-- //news -->
        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-4 text-left"> İletişim</h3>

            <div class="contact_grid_right mt-5 mx-auto text-left">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız" ></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz" ></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Konu" ></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"  placeholder="Mesajınız"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-info"  Width="150px" Height="55px" OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="Vazgeç" CssClass="btn btn-warning"  Width="150px" Height="55px" OnClick="Button2_Click"/>
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="cpy-right text-center">
                <p>
                    © 2022 Her hakkı saklıdır.| Tasarım-Kodlama  <br /> 
					<a href="Login.aspx">Berkan Burak Turgut</a>
                </p>
            </div>
        </section>
        <!-- //contact -->
    </div>

</body>
</html>
