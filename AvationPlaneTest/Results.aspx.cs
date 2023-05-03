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
        int intQuestions;
        int intPoints;
        protected void Page_Load(object sender, EventArgs e)
        {
            // get points
            if (Session["intCurrentQuestionCounter"] != null)
            {
                intQuestions = (int)Session["intCurrentQuestionCounter"];
            }
            if (Session["intPoints"] != null)
            {
                intPoints = (int)Session["intPoints"];
            }
            
            // shows how many questions and how many points they got right
            lblPoints.Text = "You got " + intPoints.ToString() + " out of " + intQuestions.ToString() + " total points.";
            // shows what percent they got right and checks for /0
            lblScore.Text = "Score: " + (intQuestions == 0 ? "No Questions":( (intPoints/intQuestions).ToString() + "%"));
        }
        protected void btnMM(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
}