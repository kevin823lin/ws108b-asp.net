using ASP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.DynamicData;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class billboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Columns[0].Visible = false;
        DetailsView1.Fields[0].Visible = false;
        if (Session["permission"] != null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Hidden", "disableBtn('btn_login')", true);
            if (Session["permission"].ToString() == "1")
            {
                GridView1.Columns[0].Visible = true;
                DetailsView1.Fields[0].Visible = true;
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Hidden", "disableBtn('btn_logout')", true);
        }
    }
}