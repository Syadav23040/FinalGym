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
    public partial class Display : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string constr = "Server=tcp:laspro.database.windows.net,1433;Initial Catalog=Project;Persist Security Info=True;User ID=suman;Password=admin@123;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        SqlDataAdapter sda;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(constr);
            cmd = new SqlCommand("select * from NewMember", con);
            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            cmd.Connection.Open();
            sda.Fill(ds);
            gvMember.DataSource = ds.Tables[0];
            gvMember.DataBind();
            con.Close();
        }
    }
}