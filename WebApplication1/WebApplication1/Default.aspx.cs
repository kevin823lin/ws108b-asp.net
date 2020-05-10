using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int data = int.Parse(TextBox1.Text) + 10;
            TextBox1.Text = data.ToString();
        }

        protected void Button2_ServerClick(object sender, EventArgs e)
        {
            int data = int.Parse(input2.Value) + 10;
            input2.Value = data.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int data = int.Parse(TextBox1.Text);
            if (data > 50) Response.Redirect("Test.aspx");
            else Response.Redirect("About.html");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }
    }
}