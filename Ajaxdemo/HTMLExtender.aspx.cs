using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ajaxdemo
{
    public partial class HTMLExtender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ContentChanged(object sender, EventArgs e)
        {
            ContentChangedLabel.Text = "<span style='color:red'>Content changed</span>";

        }



        protected void submit_Click(object sender, EventArgs e)
        {
            ContentChangedLabel.Text = TextBox1.Text;
        }


    }
}