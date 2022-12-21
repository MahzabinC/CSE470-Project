using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HSPA
{
	public partial class WebForm5 : System.Web.UI.Page
	{
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
	}
}