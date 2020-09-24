using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string constr = "Server=tcp:laspro.database.windows.net,1433;Initial Catalog=Project;Persist Security Info=True;User ID=suman;Password=admin@123;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        DataSet ds;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lblMsg.Visible = true;

            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand
                {
                    CommandText = "Select * from NewMember where MId=@id",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@id", txtMId.Text);
                sda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.Connection.Open();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.Visible = true;
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                   
                    lblMsg.Text = "Member details found";
                }
                else
                {
                    lblMsg.Text = "No such Member exist ";
                    GridView1.Visible = false;
                }
            }
            catch (SqlException se)
            {
                lblMsg.Text = "sql server says !!" + se.Message;
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Application says !!" + ex.Message;
            }
            finally
            {
                cmd.Connection.Close();
            }
        }
    }
}