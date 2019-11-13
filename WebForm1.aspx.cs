using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication20
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //Do important things then redirect
            System.Threading.Thread.Sleep(2000);
            Response.Redirect("default.aspx");
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // 
        }
    }
}