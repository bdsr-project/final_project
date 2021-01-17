using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword_bdsr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select password from users where username = " + TextBox1.Text, con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataRow dr = ds.Tables[0].Rows[0];
        string pass = dr["password"].ToString();
        con.Close();
        if(pass == txtcurrentpassword.Text)
        {
            SqlCommand cmdd = new SqlCommand("update users set password = " + txtnewpassword.Text + 
                " where username = " + TextBox1.Text, con);
            con.Open();
            cmdd.ExecuteNonQuery();
        }
        else
        {
            Response.Write("current password is not correct");
        }

        
    }
}