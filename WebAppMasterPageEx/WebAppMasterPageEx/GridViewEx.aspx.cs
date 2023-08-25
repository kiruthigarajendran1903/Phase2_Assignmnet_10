using System;
using System.Data;
using System.Data.SqlClient;

namespace WebAppMasterPageEx
{
    public partial class GridViewEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con= new SqlConnection("server=DESKTOP-N29NEU1;database=CustsDb;trusted_connection=true;");
                SqlCommand cmd = new SqlCommand("select * from Customer", con);
                con.Open();
                SqlDataAdapter dataAdapter=new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds);
                gvEmps.DataSource = ds;
                gvEmps.DataBind();
                lblMsg.Text = "Number of Customers are: " + ds.Tables[0].Rows.Count;

            }
            catch(Exception ex) {
            
            lblMsg.Text = "Error "+ex.Message;
            
            }

        }

        
    }
}