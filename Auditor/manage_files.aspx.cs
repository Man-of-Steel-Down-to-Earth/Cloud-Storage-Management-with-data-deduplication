using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

public partial class Auditor_manage_files : System.Web.UI.Page
{
    dbconect db = new dbconect();
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // Session["username"] = "neethu@gmail.com";
            ds = db.discont1("select * from [tb_upload] where upload_by='" + Session["username"].ToString() + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

            ds.Clear();
            ds = db.discont1("select * from [tb_user_registration] where username='" + Session["username"].ToString() + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Image2.ImageUrl = ds.Tables[0].Rows[0]["photo"].ToString();
                Label1.Text = ds.Tables[0].Rows[0]["fname"].ToString() +" "+ ds.Tables[0].Rows[0]["lname"].ToString(); ;
            }

            int t_file =int.Parse( db.extscalr("select count(*) from [tb_upload] where upload_by='" + Session["username"].ToString() + "'"));
            Label4.Text = t_file.ToString();
            int d_file = int.Parse(db.extscalr("select count(*) from [tb_upload] where upload_by='" + Session["username"].ToString() + "' and [duplicated_st]='"+"1"+"'"));
            //Label5.Text = d_file;
             int n_file = int.Parse(db.extscalr("select count(*) from [tb_upload] where upload_by='" + Session["username"].ToString() + "' and [duplicated_st]='" + "0" + "'"));
           // Label6.Text = n_file;
            double dup_file = ((d_file *100)/ t_file);
           // string dup_file = ((2 / 6) * 100).ToString();
            float ndup_file = ((n_file*100) / t_file);
            Label5.Text = dup_file +"%";
            Label6.Text = ndup_file + "%";


            ds.Clear();
            ds = db.discont("select duplicated_st,COUNT(fid)as cnt from tb_upload where upload_by='" + Session["username"] + "' group by duplicated_st");
           // Bindchart(ds);
            //Chart1.DataSource = ds;
            //Chart1.DataBind();
            int fcount = 0;
            int scount = 0;
            ds.Clear();
            ds = db.discont1("select * from tb_upload where duplicated_st='" + "0" + "' and upload_by='" + Session["username"] + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataList2.DataSource = ds;
                DataList2.DataBind();
            }
            for (int i = 0; i < DataList2.Items.Count; i++)
            {
                string fid = ((Label)DataList2.Items[i].FindControl("Label10")).Text;
                string fname = ((Label)DataList2.Items[i].FindControl("Label7")).Text;
               

                ds.Clear();
                ds = db.discont("select splited_hashes from tb_upload  where fid='"+fid+"'");
                if(ds.Tables[0].Rows.Count>0)
                {
                    List<string> partial_dup = new List<string>();
                    List<string> full_dup = new List<string>();
                    string splited_hash = ds.Tables[0].Rows[0]["splited_hashes"].ToString();
                    string[] ar = splited_hash.Split(',');
                    string first_hash = ar[0];
                   string  second_hash = ar[1];
                  
                   DataSet ds1 = new DataSet();
                   ds1 = db.discont("select duplicated_parts,upload_by from tb_upload where fid!='" + fid + "' and duplicated_parts!='"+"0"+"' ");
                    if(ds1.Tables[0].Rows.Count>0)
                    {
                        for (int j = 0; j < ds1.Tables[0].Rows.Count; j++)
                        {
                            string finded=ds1.Tables[0].Rows[j]["duplicated_parts"].ToString();
                            string[] fetch = finded.Split(',');
                            if (fetch.Contains(first_hash))
                            {
                                if (fetch.Contains(second_hash))
                                {
                                    full_dup.Add(ds1.Tables[0].Rows[j]["upload_by"].ToString());

                                }
                                else
                                {
                                    partial_dup.Add(ds1.Tables[0].Rows[j]["upload_by"].ToString());
                                }
                            }
                            else if (fetch.Contains(second_hash))
                           
                            {
                                partial_dup.Add(ds1.Tables[0].Rows[j]["upload_by"].ToString()); 
                            }
                        }
                    }

                      int f_dup=full_dup.Count();
                    int p_dup=partial_dup.Count();
                    ((Label)DataList2.Items[i].FindControl("Label9")).Text = f_dup.ToString();
                    ((Label)DataList2.Items[i].FindControl("Label11")).Text = p_dup.ToString();
                   
                   
                }

              
               


                //string res = db.extscalr("select duplicated_parts from tb_upload where fid='"+fid+"'");
                //if (res == "0")
                //{
                //    ((Label)DataList2.Items[i].FindControl("Label9")).Text = "No Duplication";
                //}
                //else
                //{
                //    string[] ar = res.Split(',');
                //    int cnt = ar.Count();
                //    ((Label)DataList2.Items[i].FindControl("Label9")).Text = cnt + "  parts of duplication";

                //}
            }
        }
    }
//    private void Bindchart(DataSet ds)  
//    {  
//        //connection();  
//        //com = new SqlCommand("GetSaleData", con);  
//        //com.CommandType = CommandType.StoredProcedure;  
//        //SqlDataAdapter da = new SqlDataAdapter(com);  
//        //DataSet ds = new DataSet();  
       
  
//        DataTable ChartData = ds.Tables[0];  

  
//        //storing total rows count to loop on each Record  
//        string[] XPointMember = new string[ChartData.Rows.Count];  
//        int[] YPointMember = new int[ChartData.Rows.Count];  
  
//        for (int count = 0; count < ChartData.Rows.Count; count++)  
//        {  
//            //storing Values for X axis  
//            XPointMember[count] = ChartData.Rows[count]["duplicated_st"].ToString();  
//            //storing values for Y Axis  
//            YPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["cnt"]);  
  
//        }  
//        //binding chart control  
//        Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);  
  
//        //Setting width of line  
//        Chart1.Series[0].BorderWidth = 10;  
//        //setting Chart type   
//        Chart1.Series[0].ChartType = SeriesChartType.Pie;  
  
  
//        foreach (Series charts in Chart1.Series)  
//        {  
//            foreach (DataPoint point in charts.Points)  
//            {  
//                switch (point.AxisLabel)  
//                {  
//                    case "Q1": point.Color = Color.RoyalBlue; break;  
//                    case "Q2": point.Color = Color.SaddleBrown; break;  
//                    case "Q3": point.Color = Color.SpringGreen; break;  
//                }  
//                point.Label = string.Format("{0:0} - {1}", point.YValues[0], point.AxisLabel);  
  
//            }  
//        }    
  
  
//        //Enabled 3D  
//      //  Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;  
        
  
     
//} 
    protected void DataList2_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        Session["fid"]=((Label)e.Item.FindControl("Label10")).Text;
        Response.Redirect("duplication_details.aspx");
    }
    protected void DataList2_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Session["fid"] = ((Label)e.Item.FindControl("Label10")).Text;
        Response.Redirect("partialduplication_details.aspx");
    }
}