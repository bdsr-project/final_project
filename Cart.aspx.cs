using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string u = (string)Session["uname"];
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from cart where username='"+ u +"' " , con);
        object rcount = cmd.ExecuteScalar();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count==0)
        {
            RegisterStartupScript("s", "<script>alert('Your cart is Empty')</script>");
            Button2.Visible = false;
        }
       
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from cart where product_id="+e.CommandArgument, con);
        cmd.ExecuteNonQuery();
        RegisterStartupScript("s", "<script>alert('Removed from cart')</script>");
        Response.Redirect("Cart.aspx");
    }
}