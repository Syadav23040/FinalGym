using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Equipments : System.Web.UI.Page
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblMsg.Visible = true;
            
            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand
                {
                    CommandText = "insert into Equip(EName,EQuantity) values (@ename,@equantity)",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@ename", txtEName.Text);
                cmd.Parameters.AddWithValue("@equantity", txtQuantity.Text);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();

                lblMsg.Text = "Equipment Added Successfully!!";

            }
            catch (SqlException se)
            { lblMsg.Text = "Sql Server says: !!!" + se.Message; }
            catch (Exception ee)
            { lblMsg.Text = "Application says: " + ee.Message; }
            finally { cmd.Connection.Close(); }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(constr);

                cmd = new SqlCommand
                {
                    CommandText
                    = "delete from Equip where EName=@Name",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@Name",txtEName.Text );
                sda = new SqlDataAdapter(cmd);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                lbl.Text = "Record Deleted";
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Exception occurred" + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
    }

