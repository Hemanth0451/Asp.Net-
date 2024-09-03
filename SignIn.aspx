<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication3.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Netflex</title>
    <style>
        borderclass {
            background-color: lightgray
        }
        .login-box{
            background-color:rgba(0,0,0,0.2);
            width:480px;
            height:800px;
        }
    </style>
</head>
<body style="background-image: url(https://help.nflxext.com/43e0db2f-fea0-4308-bfb9-09f2a88f6ee4_what_is_netflix_1_en.png)">
    <form id="form1" runat="server">
        <h2 style="color: red; font-size: 40px">NETFLEX</h2>
        <div style=" border:hidden; margin-left: 25%; margin-top: 3%; background-size: cover" class="borderclass" translate="yes">
            <div class="loginbox">
            <table style="margin-top: 5%; margin-bottom: 5%; font-size: 50px" align="center">
                <tr>
                    <td style="color: aliceblue">
                        <asp:Label ID="lblsignin" runat="server" Text="Sign In" Height="30px"></asp:Label>
                    </td>
                </tr>
                <tr>

                    <td style="font-size: 15px">
                        <asp:TextBox ID="Txtemail1" runat="server" placeholder="Email or Phone number" BorderWidth="0px" Height="40px" ForeColor="#0066FF" BackColor="#959595" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="Txtemail1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:label id="cmddata" runat="server"></asp:label>
                    </td>
                </tr>
                <tr>

                    <td style="font-size: 15px">
                        <asp:TextBox ID="Txtpassword1" runat="server" placeholder="Password" BorderWidth="0px" Height="40px" BackColor="#999999" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="Txtpassword1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <td>
                        <asp:Button ID="btnlogin" runat="server" Text="Sign In" OnClick="btnlogin_Click" BackColor="Red" Height="40px" Width="300px" BorderWidth="0px" />
                    </td>
                </tr>
                <tr>

                    <td style="font-size: 20px; color: aliceblue">
                        <p>
                            <asp:CheckBox ID="btnremember" runat="server" Text="Remember me" ForeColor="#B0D8FF" /><pre></pre>
                            <asp:LinkButton ID="linkhelp" runat="server" Text="Need help?" OnClick="linkhelp_Click" ></asp:LinkButton>

                        </p>
                    </td>
                   
                </tr>
                <tr>
                    <td style="font-size: 15px; color: blue">
                        <p style="color: aqua">
                           <b> New to Netflex? </b>
                       <b> <asp:HyperLink ID="hyperRegister" runat="server" NavigateUrl="~/Registeration.aspx" Text="SignUpNow" ForeColor="#97FFFF"></asp:HyperLink> </b> 
                        </p>
                    </td> 
                </tr>
            </table>
                </div>
        </div>
    
    </form>
</body>
</html>
