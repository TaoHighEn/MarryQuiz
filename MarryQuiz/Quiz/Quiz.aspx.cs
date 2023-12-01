using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarryQuiz.Quiz
{
    public partial class Quiz : System.Web.UI.Page
    {
        private string[,] questionsAndAnswers =
        {
            { "1. 新郎、新娘是什麼時期認識的？", "大學" },
            { "2. 新郎、新娘登記日期是幾月幾號？", "10/28" },
            { "3. 新郎、新娘交往了幾年？", "8" },
            { "4. 新郎、新娘第一次見面的縣市？", "雲林" },
            { "5. 新郎、新娘的蜜月國家？", "日本" }
        };
        private string[,] answerarr = { { "大學", "高中", "碩士", "當兵" }, { "11/11", "10/28", "04/17", "09/20" }, { "5", "7", "8", "10" }, { "高雄", "雲林", "桃園", "台北" }, { "日本", "德國", "美國", "俄羅斯" } };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadQuestions();
            }
        }
        protected void LoadQuestions()
        {
            for (int i = 0; i < 5; i++)
            {
                var pair = questionsAndAnswers[i, 0];
                //問題label
                Label lblQuestion = new Label();
                lblQuestion.Text = pair;
                //回答RadioButton
                RadioButtonList radioButtonList = new RadioButtonList();
                radioButtonList.ID = "radio_ans" + i;
                for (int r = 0; r < 4; r++)
                {
                    radioButtonList.Items.Add(new ListItem(answerarr[i, r]));
                }
                Panel panel = new Panel() { ID="div"+i,CssClass = "input-group"};
                panel.Controls.Add(lblQuestion);
                panel.Controls.Add(radioButtonList);
                form1.Controls.Add(panel);
                form1.Controls.Add(new LiteralControl("<br/>"));
                form1.Controls.Add(new LiteralControl("<br/><br/>"));
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            foreach (var pair in questionsAndAnswers)
            {
                //string answerID = "txtAnswer_" + pair.Key.GetHashCode();
                //TextBox txtAnswer = form1.FindControl(answerID) as TextBox;

                //if (txtAnswer != null && txtAnswer.Text.Trim().Equals(pair.Value, StringComparison.OrdinalIgnoreCase))
                //{
                //    // Correct answer
                //    // Perform actions (e.g., add points, display correct answer message)
                //    Response.Write($"Question: {pair.Key}<br/>Your answer: {txtAnswer.Text}<br/>Correct answer: {pair.Value}<br/><br/>");
                //}
                //else if (txtAnswer != null)
                //{
                //    // Incorrect answer
                //    // Perform actions (e.g., display incorrect answer message)
                //    Response.Write($"Question: {pair.Key}<br/>Your answer: {txtAnswer.Text}<br/>Correct answer: {pair.Value}<br/><br/>");
                //}
            }
        }
    }
}