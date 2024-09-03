using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnid_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=HEMANTH;Initial Catalog=stu;Trusted_Connection=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into Rgstr_Details values ('" + Txtuserid.Text + "','" + txtname.Text + "','" + Txtlstname.Text + "','" + Txtemail.Text + "','" + Txtpassword.Text + "','" + Txtcnfpswrd.Text + "','" + TxtMobile.Text + "')", conn);
            cmd.ExecuteNonQuery();
            Txtuserid.Text = "";
            txtname.Text = "";
            Txtlstname.Text = "";
            Txtemail.Text = "";
            Txtpassword.Text = "";
            Txtcnfpswrd.Text = "";
            TxtMobile.Text = "";
            conn.Close();
            lblmsg.Text = "Registered Successfully";
            lblmsg.ForeColor = System.Drawing.Color.Green;
        }

        //protected void btnsign_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/SignIn.aspx");
        //}
    }
}