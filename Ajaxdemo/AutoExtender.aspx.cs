using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace Ajaxdemo
{
    public partial class AutoExtender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public string[] GetCountriesList(string prefixText, int count)
        {
            List<string> countriesArList = new List<string>();
            countriesArList.Add("India");
            countriesArList.Add("Iran");
            countriesArList.Add("Iraq");
            countriesArList.Add("Israel");
            return countriesArList.ToArray();
        }
    }
}