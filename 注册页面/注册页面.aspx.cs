using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 注册页面
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       protected void Check_Username(object sender, EventArgs e)
        {
            string strName = username.Text;
            Image1.Visible = false;
            user_err.Text = "";
            Image1.ImageUrl = "~/err.gif";
            if (strName == "")
            {
                Image1.Visible = true;
                user_err.Text = "用户名不能为空，请输入用户名";
                return ;
            }
            else if (strName.Length < 6 || strName.Length > 18)
            {
                Image1.Visible = true;
                user_err.Text = "用户名长度不正确";
                return ;
            }
            else
            {
                Image1.ImageUrl = "~/yes.gif";
                Image1.Visible = true;
                return ;
            }
        }

       protected void Check_Pass1(object sender, EventArgs e)
       {
           string strPass = password1.Text;
           Image2.Visible = false;
           pass1_err.Text = "";
           Image2.ImageUrl = "~/err.gif";
           if (strPass == "")
           {
               Image2.Visible = true;
               pass1_err.Text = "密码不能为空，请输入密码";
               return;
           }
           else if (strPass.Length < 6 || strPass.Length > 16)
           {
               Image2.Visible = true;
               pass1_err.Text = "密码长度不正确";
               return;
           }
           else
           {
               Image2.ImageUrl = "~/yes.gif";
               Image2.Visible = true;
               return;
           }
       }

       protected void Check_Pass2(object sender, EventArgs e)
       {
           string strPass1 = password1.Text;
           string strPass2 = password2.Text;
           Image3.Visible = false;
           pass2_err.Text = "";
           Image3.ImageUrl = "~/err.gif";
           if (strPass2 == "")
           {
               Image3.Visible = true;
               pass2_err.Text = "确认密码不能为空，请输入密码";
               return;
           }
           if (!strPass1.Equals (strPass2 ))
           {
               Image3.Visible = true;
               pass2_err.Text = "两次输入的密码不一致";
               return;
           }
       }
    }
}