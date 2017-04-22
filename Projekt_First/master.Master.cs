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
                loginMV.SetActiveView(nologin);
            else
            {
                loginLabel.InnerText = Variable.Logged;
                loginMV.SetActiveView(inlogin);
            }
        }

        protected void Button_Zaloguj(object sender, EventArgs e)
        {
           if((String.Equals(Const.LOGIN1, loginTB.Text) && String.Equals(Const.PASSWD1, passwdTB.Text)) || (String.Equals(Const.LOGIN2, loginTB.Text) && String.Equals(Const.PASSWD2, passwdTB.Text)))
            {
                Variable.Logged = loginTB.Text;
                loginLabel.InnerText = Variable.Logged;
                loginMV.SetActiveView(inlogin);
            }

        }

        protected void Button_Wyloguj(object sender, EventArgs e)
        {
            Variable.Logged = "";
            loginMV.SetActiveView(nologin);
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