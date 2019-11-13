using System;
using DevExpress.Web.Bootstrap;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication20 {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

           

        }

        protected void BootstrapButton2_Click(object sender, EventArgs e)
        {
       
            var tabPage = (BootstrapPageControl)BootstrapGridView1.FindEditFormTemplateControl("pageControl");
            BootstrapFormLayout BsFormL = tabPage.FindControl("FormLayoutDataBinding") as BootstrapFormLayout;
            BootstrapComboBox cb = BsFormL.FindControl("BootstrapComboBox1") as BootstrapComboBox;
            sLabel.Text= cb.SelectedItem.Text;
            BootstrapGridView1.CancelEdit();

        }
    }
}