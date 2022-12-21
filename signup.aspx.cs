using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HSPA
{
	public partial class WebForm4 : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (checkMemberExists())
			{

				Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
			}
			else
			{
				signUpNewMember();
			}
		}

		// user defined method
		bool checkMemberExists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * from users where user_email='" + TextBox4.Text.Trim() + "';", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);
				if (dt.Rows.Count >= 1)
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
				return false;
			}
			

		}
		void signUpNewMember()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == System.Data.ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("INSERT INTO users (user_name, user_email, user_password, user_address, user_phone, user_division, user_city) values (@user_name, @user_email, @user_password, @user_address, @user_phone, @user_division, @user_city)", con);
				cmd.Parameters.AddWithValue("@user_name", TextBox1.Text.Trim());
				cmd.Parameters.AddWithValue("@user_email", TextBox4.Text.Trim());
				cmd.Parameters.AddWithValue("@user_password", TextBox9.Text.Trim());
				cmd.Parameters.AddWithValue("@user_address", TextBox5.Text.Trim());
				cmd.Parameters.AddWithValue("@user_phone", TextBox3.Text.Trim());
				cmd.Parameters.AddWithValue("@user_division", DropDownList1.SelectedItem.Value);
				cmd.Parameters.AddWithValue("@user_city", TextBox6.Text.Trim());
				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
				Response.Redirect("login.aspx");

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}
	}
}