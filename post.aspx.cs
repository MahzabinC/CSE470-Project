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
	public partial class post : System.Web.UI.Page
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
				if (con.State == System.Data.ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd1 = new SqlCommand("SELECT user_id FROM users WHERE user_email= @user_email", con);
				cmd1.Parameters.AddWithValue("@user_email", TextBox1.Text.Trim());

				SqlDataReader useridRdr = null;

				useridRdr = cmd1.ExecuteReader();
				var userid = "";
				while (useridRdr.Read())
				{
					userid = useridRdr["user_id"].ToString();
				}
				con.Close();
				con.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO post_info (user_id, post_catagory, job_name, job_salary, job_hour, job_describtion,posted_by) values (@user_id, @post_catagory, @job_name, @job_salary, @job_hour, @job_describtion,@posted_by)", con);
				cmd.Parameters.AddWithValue("@user_id", userid);
				cmd.Parameters.AddWithValue("@posted_by", TextBox1.Text.Trim());
				cmd.Parameters.AddWithValue("@post_catagory", DropDownList1.SelectedItem.Value);
				cmd.Parameters.AddWithValue("@job_name", TextBox3.Text.Trim());
				cmd.Parameters.AddWithValue("@job_salary", TextBox4.Text.Trim());
				cmd.Parameters.AddWithValue("@job_hour", TextBox5.Text.Trim());
				cmd.Parameters.AddWithValue("@job_describtion", TextBox6.Text.Trim());
				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Posting Successful.');</script>");
				Response.Redirect("viewservice2.aspx");


			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}

		}
    }
}