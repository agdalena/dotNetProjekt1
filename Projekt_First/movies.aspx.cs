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
        protected void Page_Load(object sender, EventArgs e)
        {
            string parameter = getParam(Const.PARAM);
            if (!String.IsNullOrEmpty(parameter))
                categoryLabel.Text = parameter;
            else
                categoryLabel.Text = Const.NOCAT;
        }

        private string getParam(string param)
        {
            return Server.UrlDecode(Request.QueryString[param]);
        }
    }
}