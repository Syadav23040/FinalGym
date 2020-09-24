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
    public partial class Modify : System.Web.UI.Page
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

                pnlEmp.Visible = false;
                lblMsg.Visible = false;
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
        protected void ddlMId_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMsg.Visible = true;
            pnlEmp.Visible = true;
            lblMsg.Text = "Details of Members  :" + ddlMId.SelectedValue + "as follows";
            con = new SqlConnection(constr);
            cmd = new SqlCommand("select * from NewMember where MId=@id", con);
            cmd.Parameters.AddWithValue("@id", ddlMId.SelectedValue);
            sda = new SqlDataAdapter(cmd);
            con.Open();
            ds = new DataSet();
            sda.Fill(ds);
            string Gender = " ";
            if (rbmale.Checked)
            {
                Gender = rbmale.Text;
            }
            if (rbfemale.Checked)
            {
                Gender = rbfemale.Text;
            }

            lblMId.Text = ds.Tables[0].Rows[0]["MId"].ToString();
            txtFirstName.Text = ds.Tables[0].Rows[0]["fname"].ToString();
            txtLastName.Text = ds.Tables[0].Rows[0]["Lname"].ToString();
            Gender = ds.Tables[0].Rows[0]["Gender"].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txtJDate.Text = ds.Tables[0].Rows[0]["JoinDate"].ToString();
            txtdob.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            txtContact.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
            txtTrainer.Text = ds.Tables[0].Rows[0]["TrainerName"].ToString();
            con.Close();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand
                {
                    //CommandText = "insert into NewMember(Fname,Lname,email,Gender,Dob,Mobile,JoinDate,Membershiptype,PreferredTime,TrainerName) values (@fname,@Lname,@email,@Gender,@dob,@mobile,@joindate,@membership,@preferredTime,@Trainer)",
                    CommandText = "update NewMember set Fname=@fname,Lname=@Lname,email=@email,Gender=@Gender,Dob=@dob,Mobile=@mobile,JoinDate=@joindate,Membershiptype=@Membership,PreferredTime=@PreferredTime,TrainerName=@Trainer",
                    Connection = con
                };
                string Gender = " ";
                if (rbmale.Checked)
                {
                    Gender = rbmale.Text;
                }
                if (rbfemale.Checked)
                {
                    Gender = rbfemale.Text;
                }
                cmd.Parameters.AddWithValue("@MId", lblMId.Text);
                cmd.Parameters.AddWithValue("@fname", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@Lname", txtLastName.Text);
                cmd.Parameters.AddWithValue("@Gender",Gender);
                cmd.Parameters.AddWithValue("@dob", DateTime.Parse(txtdob.Text).ToShortDateString());
                cmd.Parameters.AddWithValue("@mobile", Int64.Parse(txtContact.Text).ToString());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@joindate", DateTime.Parse(txtJDate.Text).ToShortDateString());
                cmd.Parameters.AddWithValue("@PreferredTime", ddltime.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Membership", ddlMembershiptype.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Trainer", txtTrainer.Text);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Record updated";
                pnlEmp.Visible = false;
            }
            catch (Exception ex)
            { lblMsg.Text = "Error" + ex.Message; }
            finally
            {
                con.Close();
            }
        }
    }
    }

