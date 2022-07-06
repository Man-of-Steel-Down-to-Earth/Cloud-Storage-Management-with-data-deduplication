using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Auditor_duplication_details : System.Web.UI.Page
{
    dbconect db = new dbconect();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string filename = db.extscalr("select filename from tb_upload where fid='"+Session["fid"]+"'");
            Label6.Text = "Fully Duplicated Uploading of " + filename;
            string check = db.extscalr("select splited_hashes from tb_upload where fid='"+Session["fid"]+"'");
            ds = db.discont("select fname+lname as name,upload_date from [tb_upload],[tb_user_registration] where [tb_user_registration].username=tb_upload.upload_by and [duplicated_st]='" + "1" + "' and duplicated_parts='"+check+"' ");
            if(ds.Tables[0].Rows.Count>0)
            {
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }
    }
}