<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="REGISTRaSI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Mitra Healthcare</h1>
        <p class="lead">Website Registrasi Pasien Mitra HealthCare dibuat untuk mempermudah registrasi pasien rumah sakit!!   </p>
        <p><a href="Registrasi.aspx" class="btn btn-primary btn-lg">Registrasi Pasien Sekarang &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Registrasi Pasien!</h2>
            <p>
                Memudahkan dan mempercepat input Registrasi Pasien di Rumah Sakit, Registrasi pasien sekarang!</p>
            <p>
                <a class="btn btn-default" href="Registrasi.aspx">Registrasi &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Data Regis
            </h2>
            <p>
                Melihat, Mengubah dan Menghapus data pasien yang telah ditambahkan sebelumya, Lihat data Registrasi sekarang!
            </p>
            <p>
                <a class="btn btn-default" href="Data.aspx">Data Regis &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
