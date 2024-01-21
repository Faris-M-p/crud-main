<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="WebApplication2.userhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
    .A{
        background-color: white;
        height: 100%;
        width: 100%;
        margin: 0%;
        padding: 0%;

    }
    .B{
        background-color: rgb(11, 11, 154);
        height: 600px;
        width: 80%;
        margin: 100px;
        
        padding: 50px;
    }
    .C{
        background-color: beige;
        height: 500px;
        width: 90%;
        margin: 25px;
        
        
       padding: 30px;
    }
    .D{
        background-color: beige;
        height: 400px;
        width: 90%;
        margin:30px;
        
        
    }
 
       .auto-style3 {
           width: 29%;
           height: 132px;
           position: absolute;
           top: 439px;
           left: 238px;
           z-index: 1;
       }
       .auto-style4 {
           width: 110px;
       }
       .auto-style5 {
           position: absolute;
           top: 368px;
           left: 299px;
           z-index: 1;
       }
       .auto-style6 {
           position: absolute;
           top: 391px;
           left: 298px;
           z-index: 1;
       }
       
       }
       .auto-style7 {
         /* background-image:url("images\0pen.jpg");
          background-repeat:no-repeat;
          background-origin:unset;
          background-position:center;
          background-size:cover;*/
         background-color:red;
           position: absolute;
           height: 400px;
           width: 832px;
           margin-left: 400px;
           margin-top: 200px;
           left: 179px;
           top: 36px;
       }
       .auto-style8 {
           position: absolute;
           top: 86px;
           left: 301px;
           z-index: 1;
           width: 316px;
           height: 31px;
       }
       .auto-style9 {
           position: absolute;
           top: 85px;
           left: 191px;
           z-index: 1;
           right: 545px;
           height: 15px;
       }
       .auto-style10 {
           position: absolute;
           top: 601px;
           left: 240px;
           z-index: 1;
           width: 216px;
           height: 25px;
       }
       .auto-style11 {
           position: absolute;
           top: 232px;
           z-index: 1;
           width: 701px;
           left: 569px;
       }
  </style>
</head>
<body class="A">
    <form id="form1" runat="server">
        <div>
            <div class="B">
             <div class="C">
                <div class="D">
                    <div class="auto-style7">
                      
                        <asp:Image ID="Image2" runat="server" CssClass="auto-style11" Height="400px" ImageUrl="~/0pen.jpg" />
                       
                    </div>

                    <asp:Image ID="Image1" runat="server" Height="127px" Width="186px" />
                    

                    <table class="auto-style3">
                        <tr>
                            <td colspan="2" class="auto-style4" style="text-align:center;">PROFILE</td>
                           
                        </tr>
                        <tr>
                            <td class="auto-style4">ID</td>
                            <td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">NAME</td>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">PHONE</td>
                            <td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">EMAIL</td>
                            <td>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    

                    <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
                    

                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="UPDATE YOUR PROFILE" />
                    

                </div>
             </div>
          </div>
       </div>
    </form>
</body>
</html>
