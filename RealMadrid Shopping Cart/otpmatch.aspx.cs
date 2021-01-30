using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class otpmatch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        if (!Page.IsPostBack)
        {
            GetBillingDetails(Convert.ToInt32(Session["uid"].ToString()));
        }
    }
    private void GetBillingDetails(int uid)
    {
        da = new SqlDataAdapter("select email,shippingid from tbl_shipping where uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_shipping");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_shipping"].Rows.Count > 0)
        {

            TextBox2.Text = ds.Tables["tbl_shipping"].Rows[0][0].ToString();
            TextBox3.Text = ds.Tables["tbl_shipping"].Rows[0][1].ToString();

            

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM tbl_otp1 WHERE otp='" + TextBox1.Text + "' ");

        cmd.Connection = con;

        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("kousik.pramanik.97@gmail.com");
            msg.To.Add(TextBox2.Text);
            msg.Body = "Your Payment is successfully done <p/> the product will be reach you between 4-7 days<p/> your order id - " + TextBox3.Text;
            msg.Subject = "Payment confirmation";
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "kousik.pramanik.97@gmail.com";
            NetworkCred.Password = "P@55word123";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(msg);

            Response.Redirect("~/UserInBox/Productconfirmation.aspx");

        }
        else
        {
            Label2.Text = "OTP has not match.";
            Label2.BackColor = System.Drawing.Color.Red;
        }

        
        }

    
}
