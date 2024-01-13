using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set the initial language
                SetLanguage("en");
            }
        }

        protected void SetLanguage(string languageCode)
        {
            // Set the culture
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(languageCode);
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(languageCode);

            // Update the page controls
            Label1.Text = GetLocalResourceObject("Label1Resource1.Text").ToString();
          
        }

        protected void LanguageButton_Click(object sender, EventArgs e)
        {
            // Handle the language switch event
            string languageCode = ((Button)sender).CommandArgument.ToString();
            SetLanguage(languageCode);
        }

    }
}