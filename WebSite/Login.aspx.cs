﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string password = TextBox2.Text;

        if (id == "rm" && password == "fat")
        {
            Session["id"] = id;
            Session["name"] = id;
            Response.Redirect("Member2.aspx");
        }
        else Label3.Text = "帳號或密碼有誤，請重新輸入";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataView dataView = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if(dataView.Count>=1)
        {
            Session["id"] = dataView[0][0].ToString();
            Session["name"] = dataView[0][2].ToString();
            Session["permission"] = dataView[0][3].ToString();
            Response.Redirect("Member2.aspx");
        }
        else Label3.Text = "帳號或密碼有誤，請重新輸入";
    }
}