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
    public partial class Delete : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string constr = "Server=tcp:laspro.database.windows.net,1433;Initial Catalog=Project;Persist Security Info=True;User ID=suman;Password=admin@123;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        DataSet ds;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lbl.Visible = false;
                ddlMId.Items.Insert(0, new ListItem("Choose", "0"));
                ddlMId.AppendDataBoundItems = true;
                con = new SqlConnection(constr);
                cmd = new SqlCommand("select MId from NewMember", con);
                con.Open();
                ds = new DataSet();
                sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
              
                ddlMId.DataSource = ds.Tables[0];
                ddlMId.DataTextField = "MId";
                ddlMId.DataValueField = "MId";
                ddlMId.DataBind();
                con.Close();
            }
        }
        protected void ddlEmpId_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl.Visible = true;
            try
            {
                con = new SqlConnection(constr);

                cmd = new SqlCommand
                {
                    CommandText
                    = "delete from NewMember where MId=@MId",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@MId", ddlMId.SelectedValue);
                sda = new SqlDataAdapter(cmd);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                lbl.Text = " Record Deleted Successfully";


            }
            catch (Exception ex)
            {
                lbl.Text = "Exception occurred" + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }



    }
    }
