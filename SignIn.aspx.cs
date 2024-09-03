using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class SignIn : System.Web.UI.Page
    {
        ///*string*/ strcon=ConfigurationManager.ConnectionStrings["MyString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=HEMANTH; Initial Catalog=stu; Trusted_Connection=True");
            SqlDataAdapter da = new SqlDataAdapter("select email,password from Rgstr_Details where email='" + Txtemail1.Text.Trim() + "' and password='" + Txtpassword1.Text.Trim() + "'", conn);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("https://www.netflix.com/login");
            }
            else
            {
                Response.Redirect("~/HomePage.aspx");
            }
            ////String email=Txtemail1.Text;
            //String password=Txtpassword1.Text;
            //string conn=ConfigurationManager.ConnectionStrings["DBconn"].ConnectionString;
            //string query = "Select Email,Password from Rgstr_Details where Email=email and Password=password";
            //using (SqlConnection con = new SqlConnection(conn))
            //{
            //    using (SqlCommand cmd = new SqlCommand(query, con))
            //    {
            //        cmd.Parameters.AddWithValue("Email", email);
            //        cmd.Parameters.AddWithValue("Password", password);
            //        con.Open();
            //        cmd.ExecuteNonQuery();
            //        if (("Email" == email) || ("Password"==password))
            //        {
            //            Response.Redirect("https://www.netflix.com/login");
            //            cmddata.Text = email;
            //        }
            //        else
            //        {
            //            Response.Redirect("~/HomePage.aspx"); 
            //        }
            //    }
        }
        protected void linkhelp_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://help.netflix.com/en");
        }
        protected void signupbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registeration.aspx");
        }
    }
}