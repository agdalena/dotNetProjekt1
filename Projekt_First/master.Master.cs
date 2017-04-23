using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt_First
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Variable.Logged))
                loginMVmaster.SetActiveView(nologinmaster);
            else
            {
                loginLabel.InnerText = Variable.Logged;
                loginMVmaster.SetActiveView(inloginmaster);
            }
        }

        protected void Button_WylogujMaster(object sender, EventArgs e)
        {
            Variable.Logged = "";
            loginMVmaster.SetActiveView(nologinmaster);
        }

        protected void Button_ZalogujMaster(object sender, EventArgs e)
        {
            string url = "login.aspx";
            Response.Redirect(url);

        }

        protected void Szukaj_Click(object sender, EventArgs e)
        {

            
                string url = "search.aspx";
                string parametrs = "?";
                parametrs += "szukane=" + Server.UrlEncode(tsearch.Text);
                Response.Redirect(url + parametrs);
            
        }
    }
}