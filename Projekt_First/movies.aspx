<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="movies.aspx.cs" Inherits="Projekt_First.movies" %>

<asp:Content ID="skrypt" ContentPlaceHolderID="skrypt" runat="server">
    <script runat="server">
        void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String wybrane = GridView1.SelectedDataKey.Value.ToString();
            XmlDataSource1.XPath = "/DvdList/DVD[@ID=" + wybrane + "]";
        }
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <asp:Label ID="categoryLabel" runat="server" Text="Label"></asp:Label>
    <asp:XmlDataSource ID="sourceFilm" runat="server" DataFile="films.xml" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="films.xml" />

    <div id="masterdiv">
        <div id="div1">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sourceFilm" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID" CssClass="grid">
                <Columns>
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <%# XPath("Title") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Category">
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
        <div id="div2">
            
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" AutoGenerateRows="False">
                
                <Fields>
                    <asp:TemplateField HeaderText="ID:">
                        <ItemTemplate>
                            <div id="id1">
                                <%# XPath("@ID") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title:">
                        <ItemTemplate>
                            <div id="title1">
                                <%# XPath("Title") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Title org:">
                        <ItemTemplate>
                            <div id="title1">
                                <%# XPath("TitleOrg") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category:">
                        <ItemTemplate>
                            <div id="category1">
                                <%# XPath("@Category") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Director:">
                        <ItemTemplate>
                            <div id="price1">
                                <%# XPath("Director") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Year:">
                        <ItemTemplate>
                            <div id="price1">
                                <%# XPath("Year") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Country:">
                        <ItemTemplate>
                            <div id="price1">
                                <%# XPath("Country") %><br />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Star:">
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

                    <asp:TemplateField HeaderText="Poster:">
                        <ItemTemplate>
                            <asp:Image CssClass="poster" runat="server" ImageUrl='<%# XPath("Poster") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
        </div>
    </div>

</asp:Content>
