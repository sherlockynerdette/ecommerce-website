using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Manashreefab
{
    public partial class ProductView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["PID"] != null)
            {
                if (!IsPostBack)
                {
                    BindProductImage();
                    BindProductDetail();
                }
            }
            else
            {
                Response.Redirect("~/Product.aspx");
            }
        }

        private void BindProductDetail()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from Products where PID='" + PID + "'", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrdetail.DataSource = dt;
            rptrdetail.DataBind();
        }

        private void BindProductImage()
        {
            Int64 PID=Convert.ToInt64(Request.QueryString["PID"]);
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from ProductImage where PID='"+PID+"'", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrImage.DataSource = dt;
            rptrImage.DataBind();
        }

        protected void BtnAddtoCart_Click(object sender, EventArgs e)
        {
            String SelectedSize =String.Empty;
            foreach(RepeaterItem item in rptrdetail.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var rbList = item.FindControl("rblSize") as RadioButtonList;
                    SelectedSize = rbList.SelectedValue;
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "";
                }
                Response.Redirect("~/Order.aspx");

            }
            if (SelectedSize !="")
            {
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                if (Request.Cookies["CartPID"]!=null)
                {
                    String CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                    CookiePID = CookiePID + "," + PID + "-" + SelectedSize;
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = CookiePID;
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }
                else
                {
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = PID.ToString() + "-" + SelectedSize;
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }
                Response.Redirect("~/ProductView.aspx?PID = " + PID);
            }
            else
            {
                foreach(RepeaterItem item in rptrdetail.Items)
                {
                    if(item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                    {
                        var lblError = item.FindControl("lblError") as Label;
                        lblError.Text = "Please select a size";
                    }
                }
            }

        }

        protected void rptrdetail_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType==ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string CatID = (e.Item.FindControl("hfCatId") as HiddenField).Value;
                string SubCatID = (e.Item.FindControl("hsubID") as HiddenField).Value;
                RadioButtonList rblsize = e.Item.FindControl("rblsize") as RadioButtonList;
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Select * from Size", con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
               rblsize.DataSource = dt;
                rblsize.DataTextField = "SizeName";
                rblsize.DataValueField = "SizeID";
                rblsize.DataBind();
            }

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string CatID = (e.Item.FindControl("hfCatId") as HiddenField).Value;
                string SubCatID = (e.Item.FindControl("hsubID") as HiddenField).Value;
                RadioButtonList rblMaterial = e.Item.FindControl("rblMaterial") as RadioButtonList;

                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Select * from Material", con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rblMaterial.DataSource = dt;
                rblMaterial.DataTextField = "MaterialName";
                rblMaterial.DataValueField = "MaterialID";
                rblMaterial.DataBind();
            }
        }
    }
}