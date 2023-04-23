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

            if (ViewState["loaded"] == "true")
            {
                return;
            }
            ViewState["loaded"] = "true";
            lblListA = new List<Label>
            {
                lblA1,
                lblA2,
                lblA3,
                lblA4
            };

            string json = File.ReadAllText("D:\\ForkSource\\AviationControlsQuizGame\\AvationPlaneTest\\questions.json");

            var options = new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true,
                PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
            };
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
                    intCorrectButton = num;
                lblListA[num].Text = questions[hashValues[i++]].strQuestion;
            }


        }

        protected void imgbtnA1_Click(object sender, ImageClickEventArgs e)
        {
            deselectButtons();
            imgbtnA1.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 1;
        }

        protected void imgbtnA2_Click(object sender, ImageClickEventArgs e)
        {
            deselectButtons();
            imgbtnA2.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 2;
        }

        protected void imgbtnA3_Click(object sender, ImageClickEventArgs e)
        {
            deselectButtons();
            imgbtnA3.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 3;
        }

        protected void imgbtnA4_Click(object sender, ImageClickEventArgs e)
        {
            deselectButtons();
            imgbtnA4.ImageUrl = "~/Images/ChoiceButtonOn.png";
            intButtonSelected = 4;
        }

        // changes the buttons image to disable and sets the selection var to 0
        private void deselectButtons()
        {
            imgbtnA1.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA2.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA3.ImageUrl = "~/Images/ChoiceButtonOff.png";
            imgbtnA4.ImageUrl = "~/Images/ChoiceButtonOff.png";
            intButtonSelected = 0;
        }

        protected void imgbtnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            if(intButtonSelected == intCorrectButton)
            {
                lblQ.Text = "you did the thing";
            }
        }
    }

    public class Questions
    {
        public string strQuestion { get; set; }
        public string strAnswer { get; set; }
        public int intControl { get; set; }
    }
}