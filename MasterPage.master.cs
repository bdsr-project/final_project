using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            btnlogin.Text = "Logout";
            Label2.Text = "Welcome " + (String)Session["uname"];
           // btnlogin.Visible = false;
        }

        else
        {
            Label2.Visible = false;
            ImageButton5.Visible = false;
            
        }
    }

    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        Random ran = new Random();
        int i = ran.Next(1, 4);
        Image2.ImageUrl = "~/banners/" + i.ToString() + ".jpg";
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if(Session["uname"]==null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Cart.aspx");
        }
       
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
        
        
    }


    
}
