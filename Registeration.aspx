<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="WebApplication3.Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url(https://wallpapers.com/images/high/netflix-background-gs7hjuwvv2g0e9fj.webp)">
    <form id="form1" runat="server">
        <div style="margin-left: 10%; margin-right: 10%; margin-top: 3%; background-size: cover" class="borderclass" translate="yes" align="center">
            <h2 align="center">Sign Up</h2>
            <table style="margin-top: 5%; margin-bottom: 5%; font-size: 30px" align="center">
                <tr>
                    <td>
                        <asp:Label ID="lbluserid" runat="server" Text="User Id" ForeColor="#3366FF"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Txtuserid" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvuser" runat="server" ErrorMessage="Please enter UserId" ControlToValidate="Txtuserid" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblfirstname" runat="server" Text="First Name" ForeColor="#3366FF"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvftname" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter FirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbllstname" runat="server" Text="Last Name" ForeColor="#3366FF"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Txtlstname" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvktname" runat="server" ControlToValidate="Txtlstname" ErrorMessage="Please enter LastName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblemail" runat="server" Text="Email Id" ForeColor="#3366FF"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Txtemail" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="Txtemail" ErrorMessage="Please enter EmaiId" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="Txtemail" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="#3366FF"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password" Height="30px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="Txtpassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcnfpassword" runat="server" Text="Confirm Password" ForeColor="#3366FF" Width="300px"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Txtcnfpswrd" runat="server" TextMode="Password" Height="30px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcfpassword" runat="server" ControlToValidate="Txtcnfpswrd" ErrorMessage="Please enter CnfPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="Txtcnfpswrd" ControlToCompare="Txtpassword" ForeColor="Red" ErrorMessage="Password not matched"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmobile" runat="server" Text="Mobile No" ForeColor="#3366FF"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TxtMobile" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvmobile" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Please enter MobileNO" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtMobile" MinimumValue="0" MaximumValue="10" ErrorMessage="Please 10 digit mobile no" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnid" runat="server" Text="Register" OnClick="btnid_Click" Height="30px" Width="100px" />
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>

        <div>
            <table>
            <tr>
                <td style="font-size: 25px; color: blue",align="ceter">
                    <p style="color: aqua">
                        Already Account?></p>
                    <asp:HyperLink ID="hyper1" runat="server" NavigateUrl="~/SignIn.aspx" Text="SignInPage">
                    </asp:HyperLink>
                </td>
            </tr>
            </table>
        </div>

    </form>
</body>
</html>
