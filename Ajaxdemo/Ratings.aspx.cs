using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ajaxdemo
{
    public partial class Ratings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            int rating = Rating1.CurrentRating;
            switch (rating)
            {
                case 1:
                    lblratings.Text = "Poor";
                    break;
                case 2:
                    lblratings.Text = "Normal";
                    break;
                case 3:
                    lblratings.Text = "Good";
                    break;
                case 4:
                    lblratings.Text = "Very Good";
                    break;
                case 5:
                    lblratings.Text = "Excellent    ";
                    break;
                default:
                    break;
            }
        }


    }
}