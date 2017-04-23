<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Projekt_First.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="indexMain" ContentPlaceHolderID="content" runat="server">
    <div class="mainindex">
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='http://www.impawards.com/1999/posters/matrix_ver1.jpg' /><span>Matrix</span>
        </div>
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='http://i.datapremiery.pl/1/000/00/636/jak-poznalem-wasza-matke-sezon-2-how-i-met-your-mother-season-2-cover-okladka.jpg' /><span>Jak poznałem waszą matkę</span>
        </div>
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='http://1.fwcdn.pl/po/19/81/741981/7783412.3.jpg' /><span>Szybcy i wściekli 8</span>
        </div>
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='https://static.posters.cz/image/350/plakaty/game-of-thrones-crown-i12128.jpg' /><span>Gra o tron</span>
        </div>
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='https://68.media.tumblr.com/ac43e8600e7525ddedb448970ee03fc3/tumblr_on8gydWmUU1tk4n0bo3_r1_500.jpg' /><span>Forest Gump</span>
        </div>
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='https://s-media-cache-ak0.pinimg.com/736x/a4/b9/de/a4b9de044d3967643e70a87827523ef2.jpg' /><span>Breaking Bad</span>
        </div>
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='http://1.fwcdn.pl/po/33/90/583390/7397452.3.jpg' /><span>Nietykalni</span>
        </div>
        <div class="box">
            <asp:Image CssClass="img-product" runat="server" ImageUrl='https://s-media-cache-ak0.pinimg.com/736x/ac/da/09/acda09df027c6cdc127505bf1516cdfa.jpg' /><span>Sherlock</span>
        </div>
    </div>

</asp:Content>
