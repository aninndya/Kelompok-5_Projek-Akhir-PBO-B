<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="REGISTRaSI.SignUp" %>

<!DOCTYPE html>
<script runat="server">

    protected void Email_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp Akun Pegawai</title>
    <style type="text/css">
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("asset/image/rs.jpg");
            backdrop-filter:blur(10px);
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        form {
/*            margin: auto;*/
            position:relative;
            /*top:0;
            left:0;
            bottom:0;
            right:0;*/
            box-sizing : border-box;
            height:400px;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            border-top-left-radius: 25px;
            border-top-right-radius: 25px;
	        padding: 15px;
            min-height: 100vh; /* minimum height = screen height */
            display: flex;
            margin: 200px 200px 200px 200px;
            justify-content: center;
            align-items: center;
	        font-size: 11pt;
            background-color: #1D4A49;
            top: 6px;
            left: 0px;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;

        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            cursor: pointer;
            width: 42%;
            margin-right: 0;
            margin-top: 8px;
            margin-bottom: 8px;
            border-radius: 15px 15px 15px 15px;
            box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
        }
        .lgnbtn {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
            border-radius: 15px 15px 15px 15px
            }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        .auto-style8 {
            width: 212px;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
            <h1 style="font-family: Poppins; color: white; text-align: center; font-size: 36px; text-shadow: 2px 2px 4px #000000; ">WEBSITE REGISTRASI PASIEN <br>Buat Akun!</br></h1>
            <div class ="container">
                 <table align="center">
            <tr>
                <td rowspan="1" style="font-family: Poppins"> 
                    <asp:Label ID="Label4" runat="server" Text="Nama Lengkap"></asp:Label><br />
                    <asp:TextBox ID="Nama" runat="server" Height="40px" Width="350px"></asp:TextBox>
                </td>
                <td style="font-family: Poppins" class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Masukkan Nama Anda!" ControlToValidate="Nama" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td rowspan="1" style="font-family: Poppins"> 
                    <asp:Label ID="Label1" for="psw" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox ID="Email" runat="server" Height="40px" Width="350px" OnTextChanged="Email_TextChanged"></asp:TextBox>
                </td>
                <td style="font-family: Poppins" class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="Masukkan Email Anda!" ControlToValidate="Email" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td rowspan="1" style="font-family: Poppins">
                    <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label><br />
                    <asp:TextBox ID="Password" runat="server"  Height="40px" Width="350px" TextMode="Password" CssClass="TextBox"></asp:TextBox>
                </td>
                <td style="font-family: Poppins" class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Masukkan Password Anda!" ControlToValidate="Password" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td rowspan="1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="lgnbtn" Text="Sign Up" Width="181px" />
                    <input id="Reset1" type="reset" value="CLEAR" class="cnbtn"/></td>
                <td rowspan="1">
                    &nbsp;</td>
            </tr>
                </table> 
            </div>
        </form>
</body>
</html>
