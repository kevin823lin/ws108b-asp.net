using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
            Response.Redirect("Member2.aspx");

        //string id = DetailsView1.Rows[0].Cells[1].Text;
        string id = Request.QueryString["id"];
        if (!(Session["permission"].ToString() == "1" && Session["id"].ToString() == id))
            DetailsView1.Rows[DetailsView1.Rows.Count-1].Visible = false;
    }
}