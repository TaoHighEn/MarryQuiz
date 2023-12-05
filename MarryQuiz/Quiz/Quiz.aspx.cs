using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.IO;
using System.Data.SQLite;
using System.Web.Optimization;
using System.Text.RegularExpressions;

namespace MarryQuiz.Quiz
{
    public partial class Quiz : System.Web.UI.Page
    {
        private string[] ans = { "大學", "10/28", "8", "雲林", "日本" };
        //private string[,] questionsAndAnswers =
        //{
        //    { "1. 新郎、新娘是什麼時期認識的？", "大學" },
        //    { "2. 新郎、新娘登記日期是幾月幾號？", "10/28" },
        //    { "3. 新郎、新娘交往了幾年？", "8" },
        //    { "4. 新郎、新娘第一次見面的縣市？", "雲林" },
        //    { "5. 新郎、新娘的蜜月國家？", "日本" }
        //};
        private string[,] answerarr = { { "大學", "高中", "碩士", "當兵" }, { "11/11", "10/28", "04/17", "09/20" }, { "5", "7", "8", "10" }, { "高雄", "雲林", "桃園", "台北" }, { "日本", "德國", "美國", "俄羅斯" } };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LoadQuestions();
            }
        }
        protected void LoadQuestions()
        {
            //for (int i = 0; i < 5; i++)
            //{
            //    var pair = questionsAndAnswers[i, 0];
            //    //問題label
            //    Label lblQuestion = new Label();
            //    lblQuestion.Text = pair;
            //    //回答RadioButton
            //    RadioButtonList radioButtonList = new RadioButtonList();
            //    radioButtonList.ID = "radio_ans" + i;
            //    for (int r = 0; r < 4; r++)
            //    {
            //        radioButtonList.Items.Add(new ListItem(answerarr[i, r]));
            //    }
            //    Panel panel = new Panel() { ID = "div" + i, CssClass = "input-group" };
            //    panel.Controls.Add(lblQuestion);
            //    panel.Controls.Add(radioButtonList);
            //    form1.Controls.Add(panel);
            //    form1.Controls.Add(new LiteralControl("<br/>"));
            //    form1.Controls.Add(new LiteralControl("<br/><br/>"));
            //}
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int score = 0;
            for (int i = 0; i < 5; i++)
            {
                RadioButtonList item = form1.FindControl("radio_ans" + (i + 1)) as RadioButtonList;
                if (item.SelectedValue == ans[i])
                {
                    score += 20;
                }
            }
            //Add parameter
            Response.Write(score);
            var ipaddr = Request.ServerVariables["REMOTE_ADDR"].ToString();
            string user_name = txt_name.Text;
            //
            string xpath = @"..\SQLLite\quiz_db.db";
            string c_path = Server.MapPath(xpath);
            if (!File.Exists(c_path))
            {
                using (var cn = new SQLiteConnection("data source=" + c_path))
                {
                    SQLiteConnection.CreateFile(c_path);
                    cn.Open();
                    SQLiteCommand cmd = cn.CreateCommand();
                    cmd.CommandText = @"CREATE TABLE score (
                                                     GUID   TEXT,
                                                     Name   TEXT,
                                                     Score  INTEGER,
                                                     IPAddr TEXT,
                                                     PRIMARY KEY (
                                                         GUID
                                                     )
                                                 );";
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
            }
            using (var conn = new SQLiteConnection("data source=" + c_path))
            {
                conn.Open();
                Guid guid = Guid.NewGuid();
                string sqlcmd = string.Format(@"Select * from score where IPAddr = '{0}'", ipaddr);
                SQLiteCommand cmd = conn.CreateCommand();
                cmd.CommandText = sqlcmd;
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                if (dt.Rows.Count != 0)
                {
                    Response.Write("<script>alert('此IP已填過資料，請準備上台'); window.location='\\Quiz';</script>");
                    //Response.Redirect(@".\Quiz");
                    return;
                }
                else 
                {
                    Regex regex = new Regex("^[\u4e00-\u9fa5_a-zA-Z0-9]+$");
                    if (!regex.IsMatch(user_name))
                    {
                        Response.Write("<script>alert('想壞壞？！'); window.location='\\Quiz';</script>");
                        return;
                    }
                    sqlcmd = string.Format("INSERT INTO SCORE VALUES ('{0}','{1}',{2},'{3}')",guid,user_name,score,ipaddr);
                    cmd.CommandText = sqlcmd;
                    if (cmd.ExecuteNonQuery() == 1)
                    {
                        Response.Write("<script>alert('答案輸入成功'); window.location='\\Quiz';</script>");
                    }
                    else 
                    {
                        Response.Write("<script>alert('答案輸入失敗，請重新輸入'); window.location='\\Quiz';</script>");
                    }
                }
            }
        }
    }
}