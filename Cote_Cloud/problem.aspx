﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="problem.aspx.cs" Inherits="Cote_Cloud.problem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content="Cotepecos"/>
    <link rel="icon" type="image/png" sizes="16x16" href="images/escudo.ico"/>
    <title>Error en ejecución</title>
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/helper.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body class="fix-header fix-sidebar">
    <div class="preloader" style="display: block;">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <div class="error-page" id="wrapper">
        <div class="error-box">
            <div class="error-body text-center">
                <h1>Ups</h1>
                <h3 class="text-uppercase">Error en ejecución</h3>
                <p class="text-muted m-t-30 m-b-30">Sucedió un error grave en ejecución, por favor contacte al administrador.</p>
                <a class="btn btn-info btn-rounded waves-effect waves-light m-b-40" href="LogIn/InicioSesion.aspx">Volver al inicio</a>
            </div>
            <footer class="footer text-center">&copy; Gen 2018, Informática DS</footer>
        </div>
    </div>
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/sidebarmenu.js"></script>
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="js/custom.min.js"></script>

</body>
</html>
