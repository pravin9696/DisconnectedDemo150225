using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DisconnectedDemo150225
{
	public partial class AddEmployee : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			SqlConnection Con = new SqlConnection("Data Source=.;Initial Catalog=myDB;Integrated Security=True;TrustServerCertificate=True");

			SqlDataAdapter adp = new SqlDataAdapter("select * from employee", Con);

			SqlCommandBuilder cmdb = new SqlCommandBuilder(adp);

			DataSet ds = new DataSet();

			adp.Fill(ds, "employee");


			DataRow row = ds.Tables["employee"].NewRow();


			int empid = int.Parse(txtEmpId.Text);
			string name = txtName.Text;
			int mobile = int.Parse(txtMobile.Text);
			string city = txtCity.Text;

			row[0] = empid;
			row["empName"] = name;
			row["mobile"] = mobile;
			row["city"] = city;

			ds.Tables["employee"].Rows.Add(row);

			int n=adp.Update(ds, "employee");

			if (n>0)
			{
				Response.Write("<script>alert('record inserted successfully...');</script>");
			}
			else
			{
                Response.Write("<script>alert('Not Inserted!!!');</script>");
            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
			int empid = int.Parse(txtEmpId.Text);
			SqlConnection con=new SqlConnection("Data Source=.;Initial Catalog=myDB;Integrated Security=True;TrustServerCertificate=True");

			SqlDataAdapter adp = new SqlDataAdapter("select * from employee where empid=" + empid, con);

			SqlCommandBuilder cmdb = new SqlCommandBuilder(adp);

			DataTable dt = new DataTable();


			adp.Fill(dt);
			if (dt.Rows.Count>0)
			{
                Response.Write("<script>alert('record Found');</script>");
				txtName.Text = dt.Rows[0][1].ToString();
				txtMobile.Text = dt.Rows[0][2].ToString();
				txtCity.Text = dt.Rows[0][3].ToString();
				Button3.Enabled = true;
				Button4.Enabled = true;
            }
			else
			{
                Response.Write("<script>alert('Record not found!!');</script>");
				txtName.Text = "";
				txtMobile.Text = "";
				txtCity.Text = "";
				Button3.Enabled = false;
				Button4.Enabled = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(txtEmpId.Text);
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=myDB;Integrated Security=True;TrustServerCertificate=True");

            SqlDataAdapter adp = new SqlDataAdapter("select * from employee where empid="+empid, con);

            SqlCommandBuilder cmdb = new SqlCommandBuilder(adp);

			DataTable dt = new DataTable();
			adp.Fill(dt);

			if (dt.Rows.Count > 0)
			{
				dt.Rows[0][1] = txtName.Text;
				dt.Rows[0][2] = txtMobile.Text;
				dt.Rows[0][3] = txtCity.Text;


				int n=adp.Update(dt);
                if (n > 0)
                {
                    Response.Write("<script>alert('record updated successfully...');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Not updated!!!');</script>");
                }
            }
			else
			{
                Response.Write("<script>alert('Record not found!!');</script>");
            }

				Button3.Enabled = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int empid = int.Parse(txtEmpId.Text);
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=myDB;Integrated Security=True;TrustServerCertificate=True");

            SqlDataAdapter adp = new SqlDataAdapter("select * from employee", con);

            SqlCommandBuilder cmdb = new SqlCommandBuilder(adp);

            DataTable dt = new DataTable();
            adp.Fill(dt);

			bool flag = true;

			foreach (DataRow row in dt.Rows)
			{
				string eid = row[0].ToString();
				if (string.Compare(eid,txtEmpId.Text)==0)
				{
                    row[1] = txtName.Text;
                    row[2] = txtMobile.Text;
                    row[3] = txtCity.Text;
                    Response.Write("<script>alert('record updated successfully...');</script>");
					flag=false;
					
					//break;
                }
			}
            adp.Update(dt);
            if (flag==true)
			{
                Response.Write("<script>alert('record Not updated!!!...');</script>");
            }

        }
    }
}