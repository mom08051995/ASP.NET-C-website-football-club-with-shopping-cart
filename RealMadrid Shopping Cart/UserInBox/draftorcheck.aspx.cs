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


public partial class user_draftorcheck : System.Web.UI.Page
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
        da = new SqlDataAdapter("select email,shippingid,cdate from tbl_shipping where uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_shipping");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_shipping"].Rows.Count > 0)
        {

            TextBox1.Text = ds.Tables["tbl_shipping"].Rows[0][0].ToString();
            TextBox2.Text = ds.Tables["tbl_shipping"].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables["tbl_shipping"].Rows[0][2].ToString();
            
            

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ArrayList arr = new ArrayList();
        if (Session.Count > 0)
        {
            da = new SqlDataAdapter("select cartid from tbl_addtocart where uid=" + Convert.ToInt32(Session["uid"].ToString()) + " ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_tatc");
            if (ds.Tables["tbl_tatc"].Rows.Count > 0 && ds.Tables.Count > 0)
            {
                for (int i = 0; i < ds.Tables["tbl_tatc"].Rows.Count; i++)
                {
                    arr.Add(ds.Tables["tbl_tatc"].Rows[i][0].ToString());
                }
                if (arr.Count > 0)
                {
                    for (int j = 0; j < arr.Count; j++)
                    {
                        da = new SqlDataAdapter("select bname,imgpath,cost from tbl_addtocart where cartid=" + arr[j] + " ", con);
                        ds = new DataSet();
                        da.Fill(ds, "tbl_tatc");
                        if (ds.Tables.Count > 0 && ds.Tables["tbl_tatc"].Rows.Count > 0)
                        {
                            da = new SqlDataAdapter("insert into tbl_soldproducts(uid,brandname,imgpath,cost,cdate)values(" + Convert.ToInt32(Session["uid"].ToString()) + ",'" + ds.Tables["tbl_tatc"].Rows[0][0].ToString() + "','" + ds.Tables["tbl_tatc"].Rows[0][1].ToString() + "'," + Convert.ToDecimal(ds.Tables["tbl_tatc"].Rows[0][2].ToString()) + ",getdate())", con);
                            da.SelectCommand.ExecuteNonQuery();
                        }
                    }

                    da = new SqlDataAdapter("insert into tbl_shipping(uid,fname,lname,gender,email,city,state,country,mobileno,cdate)values(" + Convert.ToInt32(Session["uid"].ToString()) + ",'" + Session["fname"].ToString() + "','" + Session["lname"].ToString() + "','" + Session["gender"].ToString() + "','" + Session["email"].ToString() + "','" + Session["city"].ToString() + "','" + Session["state"].ToString() + "','" + Session["country"].ToString() + "','" + Session["mobileno"].ToString() + "',getdate())", con);
                    da.SelectCommand.ExecuteNonQuery();

                    // da = new SqlDataAdapter("insert into tbl_soldproducts(uid,pitemdid,productname,itemfor,brandname,imgpath,cost,cdate)values(" + Convert.ToInt32(Session["uid"].ToString()) + "," + Convert.ToInt32(Session["pitemdid"].ToString()) + ",'" + Session["productname"].ToString() + "','" + Session["itemfor"].ToString() + "','" + Session["bname"].ToString() + "','" + Session["imagepath"].ToString() + "'," + Convert.ToDecimal(Session["cost"].ToString()) + ",getdate())", con);
                    // da.SelectCommand.ExecuteNonQuery();

                    da = new SqlDataAdapter("insert into tbl_cardtype(uid,cardname,cdate)values(" + Convert.ToInt32(Session["uid"].ToString()) + ",'Cash on Delivery',getdate())", con);
                    da.SelectCommand.ExecuteNonQuery();
                    string s = "your product confirmation is successfully completed.";
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("kousik.pramanik.97@gmail.com");
                    msg.To.Add(TextBox1.Text);
                    msg.Body = "Hi,<p />your product is ordered successfully  <p /> your product will be delivered between 4-7 business day<p /> your Ordered id - " + TextBox2.Text; 
                    msg.Subject = "Product Confirmation";
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

                    Response.Redirect("~/UserInBox/Productconfirmation.aspx?confirm=" + s.ToString());

                }
            }
        }
    }
}
