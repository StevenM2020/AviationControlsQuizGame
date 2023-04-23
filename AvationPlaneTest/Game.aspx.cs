using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvationPlaneTest
{
    public partial class Game : System.Web.UI.Page
    {
        private int intButtonSelected;
        private int intTotalQuestions = 3;
        private int intCurrentQuestion;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtnA1_Click(object sender, ImageClickEventArgs e)
        {
            disableButtons();
            imgbtnA1.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 1;
        }

        protected void imgbtnA2_Click(object sender, ImageClickEventArgs e)
        {
            disableButtons();
            imgbtnA2.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 2;
        }

        protected void imgbtnA3_Click(object sender, ImageClickEventArgs e)
        {
            disableButtons();
            imgbtnA3.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 3;
        }

        protected void imgbtnA4_Click(object sender, ImageClickEventArgs e)
        {
            disableButtons();
            imgbtnA4.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 4;
        }

        // changes the buttons image to disable and sets the selection var to 0
        private void disableButtons()
        {
            imgbtnA1.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA2.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA3.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA4.ImageUrl = "~/Images/ChoiceButtonOff.png";
            intButtonSelected = 0;
        }

        protected void imgbtnSubmit_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}