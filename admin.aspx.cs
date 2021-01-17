using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class admin : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("insert into " + DropDownList1.SelectedValue +
            "(product_name, product_price, product_description, product_quantity, product_img) values('" +
             p_name_txtbox.Text + "', " + Convert.ToInt32(p_price_txtbox.Text) + ", '" + p_des_txtbox.Text + "', " + 
             Convert.ToInt16(p_quantity_txtbox.Text) + ", '" + p_img_txtbox.Text + "');", con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            cmd.Dispose();
            con.Dispose();
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("update " + DropDownList1.SelectedValue +
            " set product_name = '" + p_name_txtbox.Text + "', product_price = " + Convert.ToInt32(p_price_txtbox.Text) + 
            ", product_description = '" + p_des_txtbox.Text + "', product_quantity = " +
             Convert.ToInt16(p_quantity_txtbox.Text) + ", product_img = '" + p_img_txtbox.Text + "' where product_id="
             + Convert.ToInt16(p_id_txtbox.Text), con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            cmd.Dispose();
            con.Dispose();
        }


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("delete from " + DropDownList1.SelectedValue + " where product_id = " + Convert.ToInt16(p_id_txtbox.Text), con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            cmd.Dispose();
            con.Dispose();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["category"] = DropDownList1.SelectedValue;
        if(DropDownList1.SelectedValue == "select")
        {
            Response.Write("Please select the category of products to view.");
        }
        Response.Redirect("viewproducts.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}