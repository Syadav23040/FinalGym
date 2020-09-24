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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        //string constr = "server=IN-5CG016FP2K\\SQLEXPRESS;database=Gym;trusted_connection=true";
        string constr = "Server=tcp:laspro.database.windows.net,1433;Initial Catalog=Project;Persist Security Info=True;User ID=suman;Password=admin@123;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            txtJDate.Text = DateTime.Now.ToShortDateString();
            lblMsg.Visible = false;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblMsg.Visible = true;
            string Gender = " ";
            if (rbmale.Checked)
            {
                Gender = rbmale.Text;
            }
            if (rbFemale.Checked)
            {
                Gender = rbFemale.Text;
            }

            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand
                {
                    CommandText = "insert into NewMember(Fname,Lname,email,Gender,Dob,Mobile,JoinDate,Membershiptype,PreferredTime,TrainerName) values (@fname,@Lname,@email,@Gender,@dob,@mobile,@joindate,@membership,@preferredTime,@Trainer)",
                Connection = con
                };
                cmd.Parameters.AddWithValue("@fname", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@Lname", txtLastName.Text);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@dob", DateTime.Parse(txtdob.Text).ToShortDateString());
                cmd.Parameters.AddWithValue("@mobile", Int64.Parse(txtContact.Text).ToString());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@joindate", DateTime.Parse(txtJDate.Text).ToShortDateString());
                cmd.Parameters.AddWithValue("@PreferredTime", ddltime.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Membership", ddlMembershiptype.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Trainer", txtTrainer.Text);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
             
                lblMsg.Text = "Registeration Success!!";
              
            }
            catch (SqlException se)
            { lblMsg.Text = "Sql Server says: !!!" + se.Message; }
            catch (Exception ee)
            { lblMsg.Text = "Application says: " + ee.Message; }
            finally { cmd.Connection.Close(); }
        }
    }
}
