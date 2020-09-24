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
    public partial class Fees : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string constr = "Server=tcp:laspro.database.windows.net,1433;Initial Catalog=Project;Persist Security Info=True;User ID=suman;Password=admin@123;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        DataSet ds;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
            if (!Page.IsPostBack)
            {
                lblMsg.Visible = false;
                con = new SqlConnection(constr);
                cmd = new SqlCommand("select MId from NewMember", con);
                con.Open();
                ds = new DataSet();
                sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                ddlID.DataSource = ds.Tables[0];
                ddlID.DataTextField = "MId";
                ddlID.DataValueField = "MId";
                ddlID.DataBind();
                con.Close();
            }
        }
    
        protected void btnSubmitt_Click(object sender, EventArgs e)
        {
            lblMsg.Visible = true;
            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand
                {
                    CommandText = "insert into Fees(Amount) values (@amount)",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@amount", txtAmount.Text);
             
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();

                lblMsg.Text = "Amount paid!!";
                lbl.Text = "Your membership will expire in 3 months from today!!!!!";

            }
            catch (SqlException se)
            { lblMsg.Text = "Sql Server says: !!!" + se.Message; }
            catch (Exception ee)
            { lblMsg.Text = "Application says: " + ee.Message; }
            finally { cmd.Connection.Close(); }
        }

    }
    }
