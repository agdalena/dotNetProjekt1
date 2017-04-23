<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Projekt_First.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div id="login">

                <asp:MultiView ID="loginMV" runat="server">
                    <asp:View ID="nologin" runat="server">
                        Login:<asp:TextBox ID="loginTB" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator class="errormsg" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Pole wymagane" ControlToValidate="loginTB" Display="None"></asp:RequiredFieldValidator>
                        Hasło:<asp:TextBox ID="passwdTB" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator class="errormsg" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Pole wymagane" ControlToValidate="passwdTB" Display="None"></asp:RequiredFieldValidator>
                        <asp:Button ID="zaloguj" class="btn btn-default" OnClick="Button_Zaloguj" runat="server" Text="Zaloguj" />
                    </asp:View>
                    <asp:View ID="inlogin" runat="server">
                        <a>Witaj
                            <label id="loginLabel" runat="server"></label>
                        </a>
                        <asp:Button ID="wyloguj" OnClick="Button_Wyloguj" runat="server" Text="Wyloguj" />
                    </asp:View>

                </asp:MultiView>
        </div>
</asp:Content>
