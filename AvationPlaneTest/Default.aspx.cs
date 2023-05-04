//Script:   Start
//Author:   Ethan
//Date:     5/4/2023
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvationPlaneTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // send player to game
        protected void btnStart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Game.aspx");
        }
    }
}