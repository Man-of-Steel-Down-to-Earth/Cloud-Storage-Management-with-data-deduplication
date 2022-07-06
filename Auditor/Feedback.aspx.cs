using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auditor_Feedback : System.Web.UI.Page
{
    dbconect db=new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

            string name = db.extscalr("select fname+lname from tb_user_registration where username='"+Session["username"]+"'");
            Label2.Text = name;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool b = db.extnon("insert into tb_feedback values('"+Session["username"]+"','"+TextBox1.Text+"','"+DateTime.Now.ToString("dd-MM-yyyy")+"')");
        Response.Redirect("manage_files.aspx");

    }
}