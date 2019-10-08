using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_1b_N01359582
{
    public partial class Sports_Car_Rental_Incident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {

                }
            }
        }
    }
}