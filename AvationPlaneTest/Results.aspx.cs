using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvationPlaneTest
{
    public partial class Results : System.Web.UI.Page
    {
        int intCurrentQuestionCounter;
        int intPoints;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["intCurrentQuestionCounter"] != null)
            {
                intCurrentQuestionCounter = (int)Session["intCurrentQuestionCounter"];
            }
            if (Session["intPoints"] != null)
            {
                intPoints = (int)Session["intPoints"];
            }
        }
        protected void btnMM(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}