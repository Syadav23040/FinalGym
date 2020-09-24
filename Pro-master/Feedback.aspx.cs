using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        //string constr = "server=IN-5CG016FP2K\\SQLEXPRESS;database=Gym;trusted_connection=true";
        string constr = "Server=tcp:laspro.database.windows.net,1433;Initial Catalog=Project;Persist Security Info=True;User ID=suman;Password=admin@123;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
        }

        protected void btnSubmitt_Click(object sender, EventArgs e)
        {
            lblMsg.Visible = true;

            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand
                {
                    CommandText = "insert into Feedback(Comment) values (@comment)",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@comment", txtfeed.Text);
             
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();

                lblMsg.Text = "Thank you for your feedback!!";

            }
            catch (SqlException se)
            { lblMsg.Text = "Sql Server says: !!!" + se.Message; }
            catch (Exception ee)
            { lblMsg.Text = "Application says: " + ee.Message; }
            finally { cmd.Connection.Close(); }
        }
    }
}