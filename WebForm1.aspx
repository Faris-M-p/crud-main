<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 26%;
            height: 494px;
            position: absolute;
            top: 102px;
            left: 488px;
            z-index: 1;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 787px;
        }
        .auto-style5 {
            width: 787px;
            height: 34px;
        }
        .auto-style6 {
            width: 495px;
        }
        .auto-style7 {
            width: 495px;
            height: 34px;
        }
        .auto-style8 {
            position: absolute;
            top: 607px;
            left: 494px;
            z-index: 1;
            width: 341px;
        }
        body {
            background-color:#fbc2eb;
            /*background-image: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%);
            background-repeat:no-repeat;
            background-size:contain;
            height:100%;
            width:100%;*/
        }
        table{
            background-color:#a6c1ee;
        }
    </style>
    <script language="javascript">


        function checkin() {
            var a = "";
            var b = "";
            a = document.getElementById("TextBox3").value;
            b = a.length;
            if (b < 8 || b > 9) {
                document.getElementById('Label1').innerHTML = "Enter 10 Numbers";
            }
            else if (b == 8) {
                document.getElementById('Label1').innerHTML = "Enter one more Number";

            }
            else if (b == 9) {
                document.getElementById('Label1').innerHTML = "";


            }
            else {
                alert("verified");

            }


        }
        function passwordcheck() {

            var p = "";
            var l = "";
            var a = "";
            var s = "";
            var x = "";
            var y = "";
            y = document.getElementById("TextBox7").value;
            x = document.getElementById("TextBox6").value;
            p = x.length;
            if (p < 8) {
                l = 0;


            }
            else if (x == "")
                l = 0;
            else {
                l = 1;

            }

            if (/[a-zA-Z]/.test(x)) {
                a = 1;

            }
            else
                a = 0;
            if (/[^a-zA-Z0-9]/.test(x)) {
                s = 1;

            }
            else
                s = 0;

            if (l == 1 && a == 1 && s == 1) {

                if (x !== y)
                    alert("passwords mismatched");
                else if (x == y)
                    alert("password verified successfully");

            }

            else {
                if (l == 0)
                    alert("password must be atleast 8 characters");
                else if (a == 0)
                    alert("password contain atleast 1 alphaphet ");
                else if (s == 0)
                    alert("password contain atleast 1 special character ");
            }
        }
        //function passwordcheck() {
        //    var a = "";
        //    var b = "";
        //    a = document.getElementById("TextBox4").value;
        //    var b = a.length;
        //    if(b < 8)
        //        alert("Password must be at least 8 characters long");
        //    else if (!/[A-Z]/.test(a) || !/[a-z]/.test(a)) 
        //        alert("Contains special character"); 
        //    else if (!/[^A-Za-z0-9]/.test(a)) 
        //            alert("Include at least one special character");

        //        else
        //            alert("strong password");


        //    }
        //function validateEmail() {
        //    var x = "";
        //    var a = "";
        //    var m = "";
        //    var d = "";
        //    var l = "";
        //    x = document.getElementById("TextBox4").value;
        //    a = x.length("@");
        //    d = x.indexOf(".");
        //    m = x.charAt(0);
        //    l = x.length;
        //    if ((a >= 1) && (d > a + 5) && (isNaN(m)) && (((d + 3) == (l - 1)) || ((d + 2) == (l - 1)))) {
        //        document.getElementById("Label1").innerHTML = "good";
        //        alert("valid");

        //    }
        //    else {
        //        document.getElementById("Label1").innerHTML = "Please Enter a valid Email";
        //        alert("hhhhhhhhh");
        //    }


        //}
        function mailval() {
            var id = "";
            var id1 = "";
            var id2 = "";
            var id3 = "";
            var id4 = "";
            id = document.getElementById("TextBox4").value;
            var id1 = id.indexOf("@");
            var id2 = id.indexOf(".");
            var id3 = id.charAt(0);
            var id4 = id.length;
            if ((id1 >= 1) && (id2 > id1 + 5) && (isNaN(id3)) && (((id2 + 3) == (id4 - 1)) || ((id2 + 2) == (id4 - 1)))) {
                document.getElementById("Label1").innerHTML = "good";
                alert("Email Entered Succesfully");

            }
            else {
                alert("please check your Email");
            }

        }
        function validate() {

            mailval();
            passwordcheck();


        }



    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        <CENTER><h1> <b>UPDATE YOUR PROFILE</b>   </h1></CENTER>    
      
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">NAME</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6">DESCRIPTION</td>
                <td class="auto-style2"><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6">PHONE</td>
                <td class="auto-style2"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6">EMAIL</td>
                <td class="auto-style2"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
           
            <tr>
                <td class="auto-style6">PASSWORD</td>
                <td class="auto-style2"><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                    <td class="auto-style6">CONFIRM PASSWORD</td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td class="auto-style7"><asp:Button ID="Button1" runat="server" Text="CLEAR"  OnClick="Button1_Click" /></td>
                <td class="auto-style5"><asp:Button ID="Button2" runat="server" Text="UPDATE" OnClientClick="return validate();"  OnClick="Button2_Click" /></td>
            </tr>
           
        </table>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
        </p>
    </form>
</body>
</html>
