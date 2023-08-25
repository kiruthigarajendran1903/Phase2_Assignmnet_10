using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebAppMasterPageEx
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblMsg.Visible= false;
            }
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                lblMsg.Visible = true;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CustsDbConnectionString"].ToString());
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Customer values(@id,@name,@city,@odLimit)";
                cmd.Parameters.AddWithValue("@id",int.Parse(TxtId.Text));
                cmd.Parameters.AddWithValue("@name", TxtName.Text);

                cmd.Parameters.AddWithValue("@city", TxtCity.Text);

                cmd.Parameters.AddWithValue("@odLimit", double.Parse(TxtODLimit.Text));


                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Registration Success ";
            }
            catch (Exception ex)
            {

                lblMsg.Text = "Error " + ex.Message;

            }

        }
    }
}