<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="animacja.aspx.cs" Inherits="Projekt_First.animacja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

     <asp:Label ID="categoryLabel" runat="server" Text="Label"></asp:Label>
    <asp:XmlDataSource ID="sourceAnime" runat="server" DataFile="~/animacja.xml" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/animacja.xml" />

    <div id="masterdiv">
        <div id="Contener_Grid">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceAnime" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID" CssClass="Grid">
                <Columns>
                    <asp:TemplateField HeaderText="Tytuł">  
                        <ItemTemplate>
                            <%# XPath("Title") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Kategoria">
                        <ItemTemplate>
                            <%# XPath("./@Category") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>

                <SelectedRowStyle ForeColor="White" Font-Bold="True"
                    BackColor="#184356"></SelectedRowStyle>
                <RowStyle BackColor="#306293" ForeColor="White"></RowStyle>
            </asp:GridView>

            <br />

        </div>
        <div id="Contener_Details">
            
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" AutoGenerateRows="False" CssClass="Details">
                
                <Fields>
                    <asp:TemplateField HeaderText="ID:">
                        <ItemTemplate>
                            <div id="id1">
                                <%# XPath("@ID") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tytuł:">
                        <ItemTemplate>
                            <div id="title1">
                                <%# XPath("Title") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Tytuł oryginalny:">
                        <ItemTemplate>
                            <div id="title1">
                                <%# XPath("TitleOrg") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kategoria:">
                        <ItemTemplate>
                            <div id="category1">
                                <%# XPath("@Category") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Reżyser:">
                        <ItemTemplate>
                            <div id="price1">
                                <%# XPath("Director") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rok:">
                        <ItemTemplate>
                            <div id="price1">
                                <%# XPath("Year") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kraj:">
                        <ItemTemplate>
                            <div id="price1">
                                <%# XPath("Country") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gwiazdy:">
                        <ItemTemplate>
                            <div id="star1">
                                <asp:DataList ID="DataList1" runat="server" DataSource='<%# XPathSelect("Starring/Star") %>'>
                                    <ItemTemplate>
                                        <%# XPath(".") %><br />
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Plakat:">
                        <ItemTemplate>
                            <asp:Image CssClass="poster" runat="server" ImageUrl='<%# XPath("Poster") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
        </div>
    </div>

</asp:Content>
