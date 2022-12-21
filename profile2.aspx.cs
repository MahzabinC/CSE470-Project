using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HSPA
{
	public partial class profile2 : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			try
			{
				if (Session["email"].Equals(""))
				{
					Response.Write("<script>alert('Login First');</script>");
					Response.Redirect("login.aspx");

				}
			}
			catch { }


		}


		protected void Button1_Click(object sender, EventArgs e)
		{
			if (RadioButton1.Checked == true)
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == System.Data.ConnectionState.Closed)
					{
						con.Open();
					}
					SqlCommand cmd = new SqlCommand("INSERT INTO rating (rated_user, rate) values (@rated_user,'1')", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);

					cmd.ExecuteNonQuery();
					con.Close();
					con.Open();

					SqlCommand cmd1 = new SqlCommand("UPDATE users SET user_rating = (SELECT AVG(rate) FROM rating where rated_user=@rated_user) where user_email=@rated_user", con);
					cmd1.Parameters.AddWithValue("@rated_user", Session["user2"]);
					cmd1.ExecuteNonQuery();
					con.Close();
					Response.Write("<script>alert('Rating Successful.');</script>");
				}
				catch (Exception ex)
				{
					Response.Write("<script>alert('" + ex.Message + "');</script>");
				}
			}
			else if(RadioButton2.Checked == true)
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == System.Data.ConnectionState.Closed)
					{
						con.Open();
					}
					SqlCommand cmd = new SqlCommand("INSERT INTO rating (rated_user, rate) values (@rated_user,'2')", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);

					cmd.ExecuteNonQuery();
					con.Close();
					con.Open();
					SqlCommand cmd1 = new SqlCommand("INSERT INTO users (user_rating) values (SELECT AVG(rate) FROM rating where rated_user=@rated_user) where user_email=@rated_user", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);
					cmd.ExecuteNonQuery();
					con.Close();
					Response.Write("<script>alert('Rating Successful.');</script>");
				}
				catch (Exception ex)
				{
					Response.Write("<script>alert('" + ex.Message + "');</script>");
				}
			}
			else if (RadioButton3.Checked == true)
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == System.Data.ConnectionState.Closed)
					{
						con.Open();
					}
					SqlCommand cmd = new SqlCommand("INSERT INTO rating (rated_user, rate) values (@rated_user,'3')", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);

					cmd.ExecuteNonQuery();
					con.Close();
					con.Open();
					SqlCommand cmd1 = new SqlCommand("INSERT INTO users (user_rating) values (SELECT AVG(rate) FROM rating where rated_user=@rated_user) where user_email=@rated_user", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);
					cmd.ExecuteNonQuery();
					con.Close();
					Response.Write("<script>alert('Rating Successful.');</script>");
				}
				catch (Exception ex)
				{
					Response.Write("<script>alert('" + ex.Message + "');</script>");
				}
			}
			else if (RadioButton4.Checked == true)
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == System.Data.ConnectionState.Closed)
					{
						con.Open();
					}
					SqlCommand cmd = new SqlCommand("INSERT INTO rating (rated_user, rate) values (@rated_user,'4')", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);

					cmd.ExecuteNonQuery();
					con.Close();
					con.Open();
					SqlCommand cmd1 = new SqlCommand("INSERT INTO users (user_rating) values (SELECT AVG(rate) FROM rating where rated_user=@rated_user) where user_email=@rated_user", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);
					cmd.ExecuteNonQuery();
					con.Close();
					Response.Write("<script>alert('Rating Successful.');</script>");
				}
				catch (Exception ex)
				{
					Response.Write("<script>alert('" + ex.Message + "');</script>");
				}
			}
			else if (RadioButton5.Checked == true)
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == System.Data.ConnectionState.Closed)
					{
						con.Open();
					}
					SqlCommand cmd = new SqlCommand("INSERT INTO rating (rated_user, rate) values (@rated_user,'5')", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);

					cmd.ExecuteNonQuery();
					con.Close();
					con.Open();
					SqlCommand cmd1 = new SqlCommand("INSERT INTO users (user_rating) values (SELECT AVG(rate) FROM rating where rated_user=@rated_user) where user_email=@rated_user", con);
					cmd.Parameters.AddWithValue("@rated_user", Session["user2"]);
					cmd.ExecuteNonQuery();
					con.Close();
					Response.Write("<script>alert('Rating Successful.');</script>");
				}
				catch (Exception ex)
				{
					Response.Write("<script>alert('" + ex.Message + "');</script>");
				}
			}
		}
	}
}