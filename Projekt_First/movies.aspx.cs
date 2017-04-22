using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt_First
{
    public partial class movies : System.Web.UI.Page
    {
        int wybrane2;
        String wybrane;

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String wybrane = GridView1.SelectedDataKey.Value.ToString();
            wybrane2 = Convert.ToInt32(GridView1.SelectedDataKey.Value);
            XmlDataSource1.XPath = "/FilmsList/FILM[@ID=" + wybrane + "]";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string parameter = getParam(Const.PARAM);
            if (!String.IsNullOrEmpty(parameter))
                categoryLabel.Text = parameter;
            else
                categoryLabel.Text = Const.NOCAT;

            if (GridView1.SelectedRow != null)
            {
                DetailsView1.Visible = true;
            }
            else
            {
                DetailsView1.Visible = false;
            }
        }

        private string getParam(string param)
        {
            return Server.UrlDecode(Request.QueryString[param]);
        }
    }
}