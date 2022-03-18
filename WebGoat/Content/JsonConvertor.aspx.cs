using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OWASP.WebGoat.NET.App_Code.DB;
using OWASP.WebGoat.NET.App_Code;
using System.IO;
using Newtonsoft.Json;

namespace OWASP.WebGoat.NET
{
    public partial class JsonConvertor : System.Web.UI.Page
    {
        private IDbProvider du = Settings.CurrentDbProvider;

        protected void Page_Load (object sender, EventArgs e)
        {
            lblMessage.Visible = false;

        }

        protected void btnSave_Click (object sender, EventArgs e)
        {
            try {
                dynamic obj = JsonConvert.DeserializeObject<dynamic> (txtComment.Text, new JsonSerializerSettings {
                    TypeNameHandling = TypeNameHandling.Auto
                });



                lblMessage.Visible = true;

            } catch (Exception ex) {
                lblMessage.Text = ex.Message;
                lblMessage.Visible = true;
            }
        }
    }
}