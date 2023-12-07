using Antlr.Runtime.Tree;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarryQuiz.Quiz
{
    public partial class Choose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_choose_Click(object sender, ImageClickEventArgs e)
        {
            string xpath = @"..\SQLLite\quiz_db.db";
            string c_path = Server.MapPath(xpath);
            DataTable result = new DataTable();
            result.Clear();
            result.Columns.Add("UserName");
            result.Columns.Add("Score");
            using (SQLiteConnection conn = new SQLiteConnection("data source=" + c_path))
            {
                conn.Open();
                string sqlcmd = string.Format(@"Select * from score Order By Score");
                SQLiteCommand cmd = conn.CreateCommand();
                cmd.CommandText = sqlcmd;
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                int temp = 0;
                foreach (DataRow dr in dt.Rows)
                {
                    int score = Convert.ToInt32(dr[2]);
                    if (temp < score)
                    {
                        if (result.Rows.Count >= 5)
                        {
                            break;
                        }
                        else
                        {
                            temp = score;
                        }
                    }
                    DataRow row = result.NewRow();
                    row[0] = dr[1];
                    row[1] = score;
                    result.Rows.Add(row);
                }
            }
            gv_NameList.DataSource = result;
            gv_NameList.DataBind();
            lbl_list.Visible = true;
        }
    }
}