using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarryQuiz.Quiz
{
    public partial class DataReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Clear_Click(object sender, EventArgs e)
        {
            string xpath = @"..\SQLLite\quiz_db.db";
            string c_path = Server.MapPath(xpath);
            using (SQLiteConnection conn = new SQLiteConnection("data source=" + c_path))
            {
                conn.Open();
                SQLiteCommand cmd = conn.CreateCommand();
                cmd.CommandText = @"DELETE FROM score";
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Write("<script>alert('重設成功'); window.location='.';</script>");
                }
            }
        }
    }
}