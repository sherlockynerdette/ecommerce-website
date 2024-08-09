using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Manashreefab
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPlaceNPay_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/default.aspx");
        }

        
    }
}