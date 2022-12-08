<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="REGISTRaSI.Data" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        body{
            background-color:white;
            height: 100vh;
        }
    </style>
        <div>
  
            <h1 style="font-family: Poppins">Data Registrasi Pasien</h1>
            <asp:Button ID="Button1" runat="server" Text="Tambah Registrasi" Height="45px" OnClick="Button1_Click" Width="155px" cssclass= "btn-primary"/><br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_register" DataSourceID="SqlDataSource1" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
                <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id_register" HeaderText="Id_register" ReadOnly="True" SortExpression="Id_register" />
                <asp:BoundField DataField="nama_pasien" HeaderText="nama_pasien" SortExpression="nama_pasien" />
                <asp:BoundField DataField="tempat_lahir" HeaderText="tempat_lahir" SortExpression="tempat" />
                <asp:BoundField DataField="tanggal_lahir" HeaderText="tanggal_lahir" SortExpression="tanggal" />
                <asp:BoundField DataField="no_telpon" HeaderText="no_telpon" SortExpression="no_hp" />
                <asp:BoundField DataField="Poli" HeaderText="Poli" SortExpression="poli" />
                <asp:BoundField DataField="alamat" HeaderText="alamat" SortExpression="alamat" />
                <asp:BoundField DataField="tanggal_kunjungan" HeaderText="tanggal_kunjungan" SortExpression="tanggal_kunjungan" />
                <asp:BoundField DataField="jenis_kelamin" HeaderText="jenis_kelamin" SortExpression="jenis_kelamin" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
            <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [registrasi]" DeleteCommand="DELETE FROM [registrasi] WHERE [Id_register] = @Id_register" InsertCommand="INSERT INTO [registrasi] ([Id_register], [nama_pasien], [tempat_lahir],[tanggal_lahir], [no_telpon], [alamat], [poli],[tanggal_kunjungan],[jenis_kelamin])
            VALUES (@Id_register, @nama_pasien, @tempat_lahir, @tanggal_lahir, @no_telpon, @poli, @alamat,  @tanggal_kunjungan,  @jenis_kelamin)" UpdateCommand="UPDATE [registrasi] SET [nama_pasien] = @nama_pasien, [tempat_lahir] = @tempat_lahir, [tanggal_lahir] = @tanggal_lahir, [no_telpon] = @no_telpon, [alamat] = @alamat, [tanggal_kunjungan] = @tanggal_kunjungan, [jenis_kelamin] = @jenis_kelamin WHERE [Id_register] = @Id_register">
            <DeleteParameters>
                <asp:Parameter Name="Id_register" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id_register" Type="Int32" />
                <asp:Parameter Name="nama_pasien" Type="String" />
                <asp:Parameter Name="tempat_lahir" Type="String" />
                <asp:Parameter Name="tanggal_lahir" Type="String" />
                <asp:Parameter Name="no_telpon" Type="int32" />
                <asp:Parameter Name="Poli" Type="String" />
                <asp:Parameter Name="alamat" Type="String" />
                <asp:Parameter Name="tanggal_kunjungan" Type="String" />
                <asp:Parameter Name="jenis_kelamin" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id_register" Type="Int32" />
                <asp:Parameter Name="nama_pasien" Type="String" />
                <asp:Parameter Name="tempat_lahir" Type="String" />
                <asp:Parameter Name="tanggal_lahir" Type="String" />
                <asp:Parameter Name="no_telpon" Type="int32" />
                <asp:Parameter Name="Poli" Type="String" />
                <asp:Parameter Name="alamat" Type="String" />
                <asp:Parameter Name="tanggal_kunjungan" Type="String" />
                <asp:Parameter Name="jenis_kelamin" Type="String" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>
