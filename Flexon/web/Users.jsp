<%-- 
    Document   : Users
    Created on : Nov 3, 2016, 7:03:07 PM
    Author     : RubenP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.proyecto.conexion.Conexion"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">

</head>
<body class=" theme-blue">

    <!-- Demo page code -->

    <script type="text/javascript">
        $(function() {
            var match = document.cookie.match(new RegExp('color=([^;]+)'));
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
        });
    </script>
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style>

    <script type="text/javascript">
        $(function() {
            var uls = $('.sidebar-nav > ul > *').clone();
            uls.addClass('visible-xs');
            $('#main-menu').append(uls.clone());
        });
    </script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->

    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> Flexon</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> Nombre User 
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a href="./">Mi Perfil</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Admin Panel</li>
                <li><a href="./">Usuarios</a></li>
                <!--<li><a href="./">Security</a></li>
                <li><a tabindex="-1" href="./">Payments</a></li>-->
                <li class="divider"></li>
                <li><a tabindex="-1" href="sign-in.html">Salir</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    </div>
    

    <div class="sidebar-nav">
      <ul>
      <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i> Dashboard<i class="fa fa-collapse"></i></a></li>
      <li><ul class="dashboard-menu nav nav-list collapse in">
              <li><a href="index.html"><span class="fa fa-caret-right"></span> Main</a></li>
              <li ><a href="users.html"><span class="fa fa-caret-right"></span> User List</a></li>
              <li ><a href="user.html"><span class="fa fa-caret-right"></span> User Profile</a></li>
              <li ><a href="media.html"><span class="fa fa-caret-right"></span> Media</a></li>
              <li ><a href="calendar.html"><span class="fa fa-caret-right"></span> Calendar</a></li>
      </ul></li>



          <li>
            <a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse">
              <i class="fa fa-fw fa-briefcase"></i> 
                Account 
                <span class="label label-info">
                +3
                </span>
            </a>
          </li>
          <li>
            <ul class="accounts-menu nav nav-list collapse">
              <li ><a href="sign-in.html"><span class="fa fa-caret-right"></span> Sign In</a></li>
              <li ><a href="sign-up.html"><span class="fa fa-caret-right"></span> Sign Up</a></li>
              <li ><a href="reset-password.html"><span class="fa fa-caret-right"></span> Reset Password</a></li>
            </ul>
          </li>
        </ul>
    </div>



    <div class="content">
        <div class="header">
            
            <h1 class="page-title">Users</h1>
                    <ul class="breadcrumb">
            <li><a href="index.html">Home</a> </li>
            <li class="active">Users</li>
        </ul>

        </div>
        <div class="main-content">
            
<div class="btn-toolbar list-toolbar">
    <button class="btn btn-primary"><i class="fa fa-plus"></i> New User</button>
    <button class="btn btn-default">Import</button>
    <button class="btn btn-default">Export</button>
  <div class="btn-group">
  </div>
</div>
<table class="table">
<%
                            out.println("<thead>");
                            out.println("<tr>");
                            out.println("<td>#</td>");
                            out.println("<td>First Name</td>");
                            out.println("<td>Last Name</td>");
                            out.println("<td>Correo</td>");
                           // out.println("<td>Imagen</td>");
                            out.println("</tr>");
                            out.println("</thead>");
                            Conexion c=new Conexion();
                            ResultSet rs=c.getClientes();
                            out.println("<tbody>");
                            while(rs.next())
                            {   
                                out.println("<tr>");
                                out.println("<td>"+rs.getInt("ID_Cliente")+"</td>");
                                out.println("<td>"+rs.getString("Nombre_Cliente")+"</td>");
                                out.println("<td>"+rs.getString("Apellido_Cliente") +"</td>");
                                out.println("<td>"+rs.getString("Correo_Cliente") +"</td>");
                                out.println("<td><a href='user.html'><i class='fa fa-pencil'></i></a>");
                                out.println("<a href='#myModal' role='button' data-toggle='modal'><i class='fa fa-trash-o'></i></a>");
                                out.println("</td>");
                                out.println("</tr>");
                            }
                            out.println("</tbody>");
                            %>
</table>

<ul class="pagination">
  <li><a href="#">&laquo;</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">&raquo;</a></li>
</ul>

<div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Delete Confirmation</h3>
        </div>
        <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i>Usted quiere elimininar el usuario?.</p>
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancel</button>
            <button class="btn btn-danger" data-dismiss="modal">Eliminar</button>
        </div>
      </div>
    </div>
</div>


            <footer>
                <hr>

                <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes 
                <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
                <p>© 2014 <a href="http://www.portnine.com" target="_blank">Portnine</a></p>-->
            </footer>
        </div>
    </div>


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  
</body></html>

