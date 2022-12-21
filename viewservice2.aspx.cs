using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Http.Results;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HSPA
{
	public partial class viewservice2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Panel1.Visible = true;
			Panel2.Visible = false;
			Panel3.Visible = false;

		}

		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel2.Visible = true;
			Panel3.Visible = false;

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Panel1.Visible = true;
			Panel2.Visible = false;
			Panel3.Visible = false;

		}

		protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			Panel2.Visible = false;
			Panel3.Visible = true;

		}

		protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
		{
			Session["user2"] = GridView1.SelectedRow.Cells[5].Text;
			Response.Redirect("profile2.aspx");
		}
	}
}