<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication2.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <style>
       .ee
       {
           text-decoration-line:none;
       }

       
        .dd{
            display:flex;
            list-style:none;
            gap:40px;
            
        }
        li{
            
           
            background-color:gainsboro;

        }
        .navbar{
            background-color:indianred;
            width:80%;
            height:50px;
            align-content:center;
            margin-left:80px;

        }
    </style>
</head>
<body style="background-color:lightslategrey">
    <form id="form1" runat="server">
        <div>


<nav class="navbar">
    <div>
        <ul class="dd">
          <a href="SAMPLE.aspx" target="iframe_a" class="ee"><li>HOME</li></a> 
          <a href="view.aspx" target="iframe_a" class="ee"><li>VIEW</li></a> 
           <a href="Alter.aspx" target="iframe_a"  class="ee"><li>ALTER</li></a> 
            <a href="SAMPLE.aspx" target="iframe_a" class="ee"><li>ABOUT</li></a>
            <a href="SAMPLE.aspx" target="iframe_a" class="ee"><li>CONTACT US</li></a> 
        </ul>
    </div>
  
</nav>

 <div class="mainchild" style="width:100%; "> 
     <center>
         <iframe name="iframe_a" style="width:75%;height:550px;  background-color:darkseagreen;" ></iframe>
     </center>
      
 </div>


        </div>
    </form>
</body>
</html>
