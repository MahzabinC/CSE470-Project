using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HSPA
{
	public partial class Site1 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			try
			{
				if (Session["role"].Equals(""))
				{
					LinkButton1.Visible = true; // user login link button
					LinkButton2.Visible = true; // sign up link button
					LinkButton4.Visible = true; // service

					LinkButton3.Visible = false; // logout link button
					LinkButton7.Visible = false; // profile
					LinkButton5.Visible = false; // post


					LinkButton6.Visible = true; // admin login link button
					

				}
				else if (Session["role"].Equals("user"))
				{
					LinkButton1.Visible = false; // user login link button
					LinkButton2.Visible = false; // sign up link button
					LinkButton4.Visible = true; // service

					LinkButton3.Visible = true; // logout link button
					LinkButton7.Visible = true; // profile
					LinkButton5.Visible = true; // post


					LinkButton6.Visible = false; // admin login link button

				}
				else if (Session["role"].Equals("admin"))
				{
					LinkButton1.Visible = false; // user login link button
					LinkButton2.Visible = false; // sign up link button
					LinkButton4.Visible = true; // service

					LinkButton3.Visible = true; // logout link button
					LinkButton7.Visible = true; // profile
					LinkButton5.Visible = false; // post


					LinkButton6.Visible = false; // admin login link button

				}
			}
			catch (Exception ex)
			{

			}

		}

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
			Response.Redirect("login.aspx");

        }

		protected void LinkButton6_Click(object sender, EventArgs e)
		{
			Response.Redirect("adminlogin.aspx");
		}

		protected void LinkButton2_Click(object sender, EventArgs e)
		{
			Response.Redirect("signup.aspx");
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Session["email"] = "";
			Session["fullname"] = "";
			Session["role"] = "";
			Session["user2"] = "";
		

			LinkButton1.Visible = true; // user login link button
			LinkButton2.Visible = true; // sign up link button

			LinkButton3.Visible = false; // logout link button
			LinkButton7.Visible = false; // hello user link button


			LinkButton6.Visible = true; // admin login link button

			Response.Redirect("homepage.aspx");

		}

		protected void LinkButton4_Click(object sender, EventArgs e)
		{
			Response.Redirect("viewservice2.aspx");

		}

		protected void LinkButton7_Click(object sender, EventArgs e)
		{
			Response.Redirect("profile.aspx");
		}

		protected void LinkButton5_Click(object sender, EventArgs e)
		{
			Response.Redirect("post.aspx");
		}
	}
	
}