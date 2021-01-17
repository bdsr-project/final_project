using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Drawing;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from users where username='" + txtUsername.Text +
            "' and password = '" + txtPassword.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["uname"] = txtUsername.Text;
            Response.Write("Welcome " + txtUsername.Text);
        }
        else
        {
            Response.Write("invalid username or password");
            con.Close();
            cmd.Dispose();
            con.Dispose();
        }
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string email = string.Empty;
        string password = string.Empty;
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select email, password from users where username = @username", con);
        cmd.Parameters.AddWithValue("@username", txtUsername.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            email = dr["email"].ToString();
            password = dr["password"].ToString();
        }
        con.Close();
        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mm = new MailMessage("ramcharanteja.t@novactech.in", email);
            mm.Subject = "Password Recovery";
            mm.Body = "hi, you have forgotten your password. your password is " + password + 
                " . Please contact us if you have not initiated this process. Thankyou.";
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential();
            nc.UserName = "ramcharanteja.t@novactech.in";
            nc.Password = "RamCharan@123456";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Port = 587;
            smtp.Send(mm);
            RegisterStartupScript("s", "<script>alert('your password has been sent to your registered email address')</script>");
        }
        else
        {
            RegisterStartupScript("s", "<script>alert('invalid username')</script>");

        }


    }
}