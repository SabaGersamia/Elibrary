using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace WebApplication1
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        // user login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT password, salt FROM dbo.member_master_tbl WHERE member_id=@member_id", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    string storedHashedPassword = dr["password"].ToString();
                    string storedSalt = dr["salt"].ToString();
                    string enteredPasswordHash = ComputeSha256Hash(TextBox2.Text.Trim() + storedSalt);

                    if (enteredPasswordHash == storedHashedPassword)
                    {
                        Session["username"] = TextBox1.Text.Trim();
                        Session["fullname"] = dr["full_name"].ToString(); 
                        Session["role"] = "user";
                        Session["status"] = dr["account_status"].ToString(); 

                        Response.Redirect("homepage.aspx");
                    }
                    else
                    {
                        // Invalid credentials
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Helper Method to Compute SHA-256
        private string ComputeSha256Hash(string rawData)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}
