<%@Page Title="Registrasi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrasi.aspx.cs" Inherits="REGISTRaSI.Registrasi" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <style type="text/css">
            .auto-style1 {
                width: 46%;
                margin-left: 325px;
                margin-right: 0px;
                border-bottom-left-radius: 25px;
                border-bottom-right-radius: 25px;
                border-top-left-radius: 25px;
                border-top-right-radius: 25px;
            }
                    .cnbtn {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            cursor: pointer;
            width: 40%;
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
            body {
                justify-content:center;
                background-color:white;
                height: 100vh;
            }
        .auto-style2 {
        width: 375px;
    }
        </style>
            <h1 style="text-align: center; font-family: Poppins">Tambah Data Registrasi</h1>
            <div>
                <table class="auto-style1" style="margin-left:auto;margin-right:auto; height: 521px;">
                    <tr>
                        <td class="auto-style2" style="font-family: Poppins">
                            Nama<br />
                            <asp:TextBox ID="nama" runat="server" Height="25px" Width="323px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="Requiredname" runat="server" ErrorMessage="Nama Harap Diisi!" ControlToValidate="nama" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-family: Poppins">
                            Tanggal Lahir<br />
                            <asp:TextBox ID="tanggal_lahir" runat="server" TextMode="Date" Height="25px" Width="323px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tanggal_lahir" ErrorMessage="Tanggal lahir Harap Diisi!" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-family: Poppins">
                            Tempat Lahir<br />
                            <asp:TextBox ID="tempat_lahir" runat="server"  Height="25px" Width="323px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="tempat_lahir" ErrorMessage="Tempat Lahir Harap Diisi!" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-family: Poppins">
                            No Telpon<br />
                            <asp:TextBox ID="no_telpon" runat="server" Height="25px" Width="323px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredNama" runat="server" ControlToValidate="no_telpon" ErrorMessage="No Telpon Harap Diisi!" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-family: Poppins">
                            Poli<asp:DropDownList ID="poli" CssClass="form-control input-sm" placeholder="Poli" runat="server" OnSelectedIndexChanged="poli_SelectedIndexChanged" Height="32px" Width="331px"  >
                                <asp:ListItem Text="Poli THT" />
                                <asp:ListItem Text="Poli Gigi" />
                                <asp:ListItem Text="Poli Bedah Umum" />
                                <asp:ListItem Text="Poli Obgyn" />
                                <asp:ListItem Text="Poli Anak" />
                                <asp:ListItem Text="Poli Penyakit Dalam" />
                                <asp:ListItem Text="Poli Saraf" />
                                <asp:ListItem Text="Poli Mata" />
                                <asp:ListItem Text="Poli Jantung" />
                                <asp:ListItem Text="Poli Paru" />
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredNoHP" runat="server" ControlToValidate="poli" ErrorMessage="Poli Harap Diisi!" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-family: Poppins">
                            Alamat<br />
                            <asp:TextBox ID="alamat" runat="server" Height="25px" Width="323px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredAlamat" runat="server" ControlToValidate="alamat" ErrorMessage="Alamat Harap Diisi!" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-family: 'Poppins'">
                            Tanggal Kunjungan<br />
                            <asp:TextBox ID="tanggal_kunjungan" runat="server" TextMode="Date" Height="25px" Width="323px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tanggal_kunjungan" ErrorMessage="Tanggal Kunjungan Harap Diisi!" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-family: 'Poppins'">
                            <asp:Label ID="Label8" runat="server" Text="Jenis Kelamin"></asp:Label><br />
                                 <asp:RadioButtonList CssClass="form-group" ID="jenis_kelamin" runat="server">
                                     <asp:ListItem Text="Laki-Laki" />
                                     <asp:ListItem Text="Perempuan" />
                                 </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="jenis_kelamin" ErrorMessage="Jenis Kelamin Harap Diisi!" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" Text="Tambah" OnClick="Button1_Click" class="lgnbtn" Width="146px"  />
                            <input id="Reset1" type="reset" value="reset" class="cnbtn" /></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
</asp:Content>

