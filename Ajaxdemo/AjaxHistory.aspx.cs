using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ajaxdemo
{
    public partial class AjaxHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = CheckBoxList1.SelectedValue;
            Label1.BackColor = System.Drawing.Color.FromName(CheckBoxList1.SelectedValue);
            ScriptManager1.AddHistoryPoint("SELECTEDCOLOR", CheckBoxList1.SelectedValue);
        }

        protected void ScriptManager1_Navigate(object sender, HistoryEventArgs e)
        {
            string colour = e.State["SELECTEDCOLOR"];
            if (!String.IsNullOrEmpty(colour))
            {
                Label1.Text = colour;
                Label1.BackColor = System.Drawing.Color.FromName(colour);
                CheckBoxList1.SelectedValue = colour;
            }
        }
    }
}