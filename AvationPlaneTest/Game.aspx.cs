using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json;
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
        private int intCurrentQuestionCounter = 0;
        private int intCorrectButton;
        private int intnumCorrect =0;
        List<Questions> questions;
        List<Label> lblListA;
        Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblConsole.Text = "Console:";
            if (ViewState["loaded"] != null)
            {
                return;
            }
            ViewState["loaded"] = "true";
            ViewState["intCorrectButton"] = 0;
            ViewState["intButtonSelected"] = 0;
            ViewState["intPoints"] = 0;
            ViewState["intCurrentQuestionCounter"] = 0;
            setQuestions();
        }

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
        {if (ViewState["GameOver"] != null)
                return;
            deselectButtons();
            imgbtnA3.ImageUrl = "~/Images/ChoiceButtonOn.png";
            ViewState["intButtonSelected"] = 3;
        }

        protected void imgbtnA4_Click(object sender, ImageClickEventArgs e)
        {if (ViewState["GameOver"] != null)
                return;
            deselectButtons();
            imgbtnA4.ImageUrl = "~/Images/ChoiceButtonOn.png";
            ViewState["intButtonSelected"] = 4;
        }

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
            //lblQ.Text = ViewState["intButtonSelected"].ToString() + ViewState["intCorrectButton"];
            if (ViewState["intButtonSelected"].ToString() == ViewState["intCorrectButton"].ToString())
            {
                lblQ.Text = "you did the thing";
                ViewState["intPoints"] = (int)ViewState["intPoints"] + 1;
            }
            deselectButtons();
            if((int)ViewState["intCurrentQuestionCounter"] >= intTotalQuestions)
            {
                ViewState["GameOver"] = "true";

                // end game and show results here

                lblConsole.Text = lblConsole.Text + " game over, " + ViewState["intPoints"].ToString() + " points";
            }
            else
            {
                //next question
                setQuestions();
            }
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

            intCurrentQuestion = random.Next(6);

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