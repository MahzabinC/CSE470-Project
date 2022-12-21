using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace HSPA
{
	public partial class adminlogin : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();

				}
				SqlCommand cmd = new SqlCommand("select * from admin where admin_email='" + TextBox1.Text.Trim() + "' AND admin_password='" + TextBox2.Text.Trim() + "'", con);
				SqlDataReader dr = cmd.ExecuteReader();
				if (dr.HasRows)
				{
					while (dr.Read())
					{
						Response.Write("<script>alert('Successful login');</script>");
						Session["email"] = dr.GetValue(1).ToString();
						Session["fullname"] = dr.GetValue(0).ToString();
						Session["role"] = "admin";
						
					}
					Response.Redirect("homepage.aspx");
				}
				else
				{
					Response.Write("<script>alert('Invalid credentials');</script>");
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}
    }
}