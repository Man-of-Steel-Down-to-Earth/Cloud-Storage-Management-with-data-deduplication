using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Auditor_auditor_home : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    dbconect db = new dbconect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
          ds = db.discont("select fname+lname as name,photo,username from tb_user_registration");
           if(ds.Tables[0].Rows.Count>0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }


        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Session["username"] = GridView1.Rows[e.RowIndex].Cells[2].Text;
        Response.Redirect("manage_files.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Session["username"] = GridView1.Rows[e.RowIndex].Cells[2].Text;
        Response.Redirect("Feedback.aspx");
    }
}