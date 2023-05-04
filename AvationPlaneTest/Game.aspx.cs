//Script:   Game
//Authors:  Steven, Hunter
//Date:     5/4/2023
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace AvationPlaneTest
{
    public partial class Game : System.Web.UI.Page
    {
        private int intTotalQuestions = 3;
        List<Questions> questions;
        List<Label> lblListA;
        Random random = new Random();
        HtmlGenericControl contentDiv = new HtmlGenericControl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["loaded"] != null)
            {
                return;
            }
            ViewState["loaded"] = "true";
            ViewState["intCorrectButton"] = 0;
            ViewState["intButtonSelected"] = 0;
            ViewState["intPoints"] = 0;
            ViewState["intCurrentQuestionCounter"] = 0;
            ViewState["currentHotspot"] = 0;
            ViewState["currentQuestion"] = 0;

            //disables the second image map so that way only the first one is one the screen
            content2.Style.Add("display", "none");

            setQuestions();
        }

        #region lights up buttons and assigns selected value when player presses button
        protected void imgbtnA1_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["GameOver"] != null)
                return;
            deselectButtons();
            imgbtnA1.ImageUrl = "~/Images/ChoiceButtonOn.png";
            ViewState["intButtonSelected"] = 1;
        }

        protected void imgbtnA2_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["GameOver"] != null)
                return;
            deselectButtons();
            imgbtnA2.ImageUrl = "~/Images/ChoiceButtonOn.png";
            ViewState["intButtonSelected"] = 2;
        }

        protected void imgbtnA3_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["GameOver"] != null)
                return;
            deselectButtons();
            imgbtnA3.ImageUrl = "~/Images/ChoiceButtonOn.png";
            ViewState["intButtonSelected"] = 3;
        }

        protected void imgbtnA4_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["GameOver"] != null)
                return;
            deselectButtons();
            imgbtnA4.ImageUrl = "~/Images/ChoiceButtonOn.png";
            ViewState["intButtonSelected"] = 4;
        }
        #endregion

        // changes the buttons image to disable and sets the selection var to 0
        private void deselectButtons()
        {
            imgbtnA1.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA2.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA3.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA4.ImageUrl = "~/Images/ChoiceButtonOff.png";
            ViewState["intButtonSelected"] = 0;
        }

        protected void imgbtnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["GameOver"] != null)
                return;
            // give point if correct
            if (ViewState["intButtonSelected"].ToString() == ViewState["intCorrectButton"].ToString() &&
                ViewState["currentQuestion"].ToString() == ViewState["currentHotspot"].ToString())
            {
                lblQ.Text = "you did the thing";
                ViewState["intPoints"] = (int)ViewState["intPoints"] + 1;
            }
            deselectButtons();
            if ((int)ViewState["intCurrentQuestionCounter"] >= intTotalQuestions)
            {
                ViewState["GameOver"] = "true";

                // end game and show results here
                Session["intCurrentQuestionCounter"] = ViewState["intCurrentQuestionCounter"];
                Session["intPoints"] = ViewState["intPoints"];
                Response.Redirect("Results.aspx");
            }
            else
            {
                //next question
                setQuestions();
            }
        }


        //stores the postbackvalue of the hotspots
        //sets the imagemap image to one that provides suer feedback
        protected void saveButtonPress(Object sender, ImageMapEventArgs e)
        {
            //postback value from the clicked hotspot
            ViewState["currentHotspot"] = e.PostBackValue;

            //array that has the urls for the user feedback images
            String[] feedbackImages = new String[] {
                "~/Images/Panel1(FireTestSwitch).png",
                "~/Images/Panel1(HydraulicPowerSpoilierSwitch).png",
                "~/Images/Panel1(WindshieldWiper).png",
                "~/Images/Panel1(PivotKnobs).png",
                "~/Images/Panel1(ProbeHeaterSwitchs).png",
                "~/Images/Panel2(CargoHeatOutflow).png",
                "~/Images/Panel2(AcGeneratorDrivePanel).png",
                "~/Images/Panel2(GridInetrconnectSwitch).png",
                "~/Images/Panel2(ServiceInterphoneSwitch).png",
                "~/Images/Panel2(BatterySwitch).png"};

            //switch statement that checks for each possible value of ViewState["currentHotspot"] and sets the correct feedback image
            switch (ViewState["currentHotspot"])
            {
                case "0":
                    imageMapImage1.ImageUrl = feedbackImages[0];
                    break;
                case "1":
                    imageMapImage1.ImageUrl = feedbackImages[1];
                    break;
                case "2":
                    imageMapImage1.ImageUrl = feedbackImages[2];
                    break;
                case "3":
                    imageMapImage1.ImageUrl = feedbackImages[3];
                    break;
                case "4":
                    imageMapImage1.ImageUrl = feedbackImages[4];
                    break;
                case "5":
                    imageMapImage2.ImageUrl = feedbackImages[5];
                    break;
                case "6":
                    imageMapImage2.ImageUrl = feedbackImages[6];
                    break;
                case "7":
                    imageMapImage2.ImageUrl = feedbackImages[7];
                    break;
                case "8":
                    imageMapImage2.ImageUrl = feedbackImages[8];
                    break;
                case "9":
                    imageMapImage2.ImageUrl = feedbackImages[9];
                    break;
            }
        }

        //enables the overhead panel imagemap
        protected void changeToOverhead(object sender, ImageClickEventArgs e)
        {
            content.Style.Add("display", "all");//enables overhead panel imagemap
            content2.Style.Add("display", "none");//disables second officer imagemap
        }

        //enables the second officer imagemap
        protected void changeToOfficer(object sender, ImageClickEventArgs e)
        {
            content.Style.Add("display", "none");//disables overhead panel imagemap
            content2.Style.Add("display", "all");//enables second officer imagemap
        }

        private void setQuestions()
        {
            lblListA = new List<Label>
            {
                lblA1,
                lblA2,
                lblA3,
                lblA4
            };

            // reads the question file
            string json = File.ReadAllText(Server.MapPath(@"~/questions.json"));

            // sets the options when converting the json
            var options = new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true,
                PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
            };

            // string to object
            questions = System.Text.Json.JsonSerializer.Deserialize<List<Questions>>(json, options);

            int intCurrentQuestion = random.Next(10);

            ViewState["currentQuestion"] = intCurrentQuestion;

            lblQ.Text = questions[intCurrentQuestion].strQuestion;

            // hash holds random answers
            HashSet<int> numbers = new HashSet<int>
            {
                intCurrentQuestion
            };
            // get random answers
            while (numbers.Count < 4)
            {
                int num = random.Next(6);

                // add to hash
                numbers.Add(num);
            }
            var hashValues = numbers.ToArray();
            var rndButtons = Enumerable.Range(0, 4).OrderBy(n => random.Next());

            // Take 4
            var result = rndButtons.Take(4);

            int i = 0;
            foreach (int num in result)
            {
                // what button is the correct answer
                if (intCurrentQuestion == hashValues[i])
                    ViewState["intCorrectButton"] = num + 1;
                lblListA[num].Text = questions[hashValues[i++]].strAnswer;
            }
            ViewState["intCurrentQuestionCounter"] = (int)ViewState["intCurrentQuestionCounter"] + 1;

        }

    }

    // structure to store questions and answers
    public class Questions
    {
        public string strQuestion { get; set; }
        public string strAnswer { get; set; }
        public int intControl { get; set; }
    }
}