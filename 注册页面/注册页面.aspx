<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="注册页面.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css">
    <title>注册页面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="mainbody">
        <div class="reg_title">
        </div>
        <div class="reg_content">
            <div class="con_title">
            </div>
            <div class="con_main">
                <div class="con_main_title">
                </div>
                <div class="table">
                    <table border="0" width="100%">
                        <tbody>
                            <tr>
                                <td width="150" class="right" valign="top">
                                    <dfn>*</dfn>用户名：
                                </td>
                                <td>
                                    <div class="input">
                                        <asp:TextBox ID="username" runat="server" MaxLength="50" Width="250" 
                                            Height="18" ontextchanged="Check_Username" >
                                        </asp:TextBox>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/err.gif" Visible="False" />
                                        <asp:Label ID="user_err" runat="server" ForeColor="#d50100" CssClass="Message"></asp:Label>
                                    </div>
                                    <div class="tip">
                                        6~18个字符，可使用字母、数字、下划线，需以字母开头
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="150" class="right" valign="top">
                                    <dfn>*</dfn>密码：
                                </td>
                                <td>
                                    <div class="input">
                                        <asp:TextBox ID="password1" runat="server" TextMode="Password" MaxLength="50" Width="250" Height="18"
                                            ontextchanged="Check_Pass1"  >
                                        </asp:TextBox>
                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/err.gif" Visible="False" />
                                        <asp:Label ID="pass1_err" runat="server" ForeColor="#d50100" CssClass="Message"></asp:Label>
                                    </div>
                                    <div class="tip">
                                        6~16个字符，区分大小写
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="150" class="right" valign="top">
                                    <dfn>*</dfn>再次输入密码：
                                </td>
                                <td>
                                    <div class="input">
                                        <asp:TextBox ID="password2" runat="server" TextMode="Password" MaxLength="50" 
                                           Width="250" Height="18" ontextchanged="Check_Pass1" >
                                        </asp:TextBox>
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/err.gif" Visible="False" />
                                        <asp:Label ID="pass2_err" runat="server" ForeColor="#d50100" CssClass=Message></asp:Label>
                                    </div>
                                    <div class="tip">
                                        确保密码输入正确
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="150" class="right" valign="top">
                                    <dfn>*</dfn>E-mail：
                                </td>
                                <td>
                                    <div class="input">
                                        <asp:TextBox ID="email" runat="server" MaxLength="100" Width="250" Height="18"
                                            ontextchanged="Check_Pass1" >
                                        </asp:TextBox>
                                        <asp:Image ID="Image4" runat="server" ImageUrl="~/err.gif" Visible="False" />
                                        <asp:Label ID="email_err" runat="server" ForeColor="#d50100" CssClass=Message></asp:Label>
                                    </div>
                                    <div class="tip">
                                        激活码将会发到您的邮箱中，只有激活帐户才可以使用！
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="150" class="right" valign="top">
                                </td>
                                <td>
                                    <div class="tip">
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                            <label for="CheckBox1">
                                                我已仔细阅读并接受 <a href="/" class="font_gray14" target="_blank">
                                                    注册条款</a>。</label>
                                    </div>
                                    <div class="tip">
                                        <asp:Image ID="Image5" runat="server" ImageUrl="~/err.gif" Visible="False" />
                                        <asp:Label ID="check_err" runat="server" ForeColor="#d50100"  CssClass=Message></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="150" class="right" valign="top">
                                </td>
                                <td>
                                    <asp:Button ID="Button1" CssClass =Button1 runat="server" Text="立即注册" ForeColor=White 
                                        Font-Size="11" Font-Bold=true Height="42px" Width="124px" BackColor="#61a4d9"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
