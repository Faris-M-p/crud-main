<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regform.aspx.cs" Inherits="WebApplication2.regform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
		<style>@import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;	
	font-family: Raleway, sans-serif;
}

body {
	background: linear-gradient(90deg, #C7C5F4, #776BCC);		
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
}

.screen {		
	background: linear-gradient(90deg, #5D54A4, #7C78B8);		
	position: relative;	
	height: 600px;
	width: 360px;	
	box-shadow: 0px 0px 24px #5C5696;
}

.screen__content {
	z-index: 1;
	position: relative;	
	height: 100%;
}

.screen__background {		
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 0;
	-webkit-clip-path: inset(0 0 0 0);
	clip-path: inset(0 0 0 0);	
}

.screen__background__shape {
	transform: rotate(45deg);
	position: absolute;
}

.screen__background__shape1 {
	height: 520px;
	width: 520px;
	background: #FFF;	
	top: -50px;
	right: 120px;	
	border-radius: 0 72px 0 0;
}

.screen__background__shape2 {
	height: 220px;
	width: 220px;
	background: #6C63AC;	
	top: -172px;
	right: 0;	
	border-radius: 32px;
}

.screen__background__shape3 {
	height: 540px;
	width: 190px;
	background: linear-gradient(270deg, #5D54A4, #6A679E);
	top: -24px;
	right: 0;	
	border-radius: 32px;
}

.screen__background__shape4 {
	height: 400px;
	width: 200px;
	background: #7E7BB9;	
	top: 420px;
	right: 50px;	
	border-radius: 60px;
}

.login {
	width: 320px;
	padding: 30px;
	padding-top: 156px;
}

.login__field {
	padding: 0px 0px;	
	position: relative;	
	margin-top:44px;
}

.login__icon {
	position: absolute;
	top: 30px;
	color: #7875B5;
}

.login__input {
	border: none;
	border-bottom: 2px solid #D1D1D4;
	background: none;
	padding: 0px;
	padding-left: 24px;
	font-weight: 700;
	width: 75%;
	transition: .2s;
}

.login__input:active,
.login__input:focus,
.login__input:hover {
	outline: none;
	border-bottom-color: #6A679E;
}

.login__submit {
	background: #fff;
	font-size: 14px;
	margin-top: 5px;
	padding: 16px 20px;
	border-radius: 26px;
	border: 1px solid #D4D3E8;
	text-transform: uppercase;
	font-weight: 700;
	display: flex;
	align-items: center;
	width: 100%;
	color: #4C489D;
	box-shadow: 0px 2px 2px #5C5696;
	cursor: pointer;
	transition: .2s;
}
.clear{
	background: #fff;
	font-size: 14px;
margin-top: -110px;
padding: 16px 20px;
border-radius: 26px;
border: 1px solid #D4D3E8;
text-transform: uppercase;
font-weight: 700;
display: flex;
align-items: center;
width: 25%;
color: #4C489D;
box-shadow: 0px 2px 2px #5C5696;
cursor: pointer;
transition: .2s;
margin-left:250px;
}
.hyp{
	font-size: 14px;
	text-transform: uppercase;
font-weight: 700;
transition: .2s;
background: #fff;
margin-top: 73px;
 position: absolute;
}

}

.login__submit:active,
.login__submit:focus,
.login__submit:hover {
	border-color: #6A679E;
	outline: none;
}

.button__icon {
	font-size: 24px;
	margin-left: auto;
	color: #7875B5;
}

.social-login {	
	position: absolute;
	height: 140px;
	width: 160px;
	text-align: center;
	bottom: 0px;
	right: 0px;
	color: #fff;
}

.social-icons {
	display: flex;
	align-items: center;
	justify-content: center;
}

.social-login__icon {
	padding: 20px 10px;
	color: #fff;
	text-decoration: none;	
	text-shadow: 0px 0px 8px #7875B5;
}

.social-login__icon:hover {
	transform: scale(1.5);	
}
.login1{
    color: #4C489D;
    margin-top: -78px;
    font-weight: 1000;
    margin-left: 112px;
    position: absolute;

}
	    .auto-style1 {
    position: absolute;
    top: 178px;
    left: 2px;
    z-index: 1;
    width: 235px;
    height: 37px;
    border-radius: 24%;
        }
	</style>
	<script language="javascript">
   
   
    function checkin() {
        var a = "";
        var b = "";
        a = document.getElementById("TextBox3").value;
        b = a.length;
        if (b < 8|| b > 9) {
            document.getElementById('Label1').innerHTML = "Enter 10 Numbers";
        }
        else if (b == 8) {
            document.getElementById('Label1').innerHTML = "Enter one more Number";

		}
		else if (b == 9)
		{
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
        else
        {
            l = 1;
            
        }
    
        if (/[a-zA-Z]/.test(x))
        {
            a = 1;
        
        }
        else
            a = 0;
        if (/[^a-zA-Z0-9]/.test(x))
        {
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

        else{
            if (l== 0)
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
      <div class="container">
				
	<div class="screen">
		<div class="screen__content">
			
				<div class="login__field">
					<asp:Label ID="Label1" runat="server" class="login1" Text="REGISTER"></asp:Label>
					<asp:Label ID="Label2" runat="server" class="login1" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
					<i class="login__icon fas fa-user"></i>
					<asp:TextBox ID="TextBox1" class="login__input" runat="server" placeholder="name"></asp:TextBox>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<asp:TextBox ID="TextBox2" class="login__input"  runat="server" placeholder="discription"></asp:TextBox>
						
				</div>
			  <div class="login__field">
				<i class="login__icon fas fa-lock"></i>
				<asp:TextBox ID="TextBox3" class="login__input" type="number" runat="server" placeholder="phone"></asp:TextBox>
					
             </div>
			<div class="login__field">
				<i class="login__icon fas fa-lock"></i>
				<asp:TextBox ID="TextBox4" class="login__input" type="email" runat="server" placeholder="email"></asp:TextBox>
					
            </div>
			<div class="login__field">
				<i class="login__icon fas fa-lock"></i>
				<asp:TextBox ID="TextBox5" class="login__input" runat="server" placeholder="username"></asp:TextBox>
					
           </div>
		    <div class="login__field">
		         <i class="login__icon fas fa-lock"></i>
		        <asp:TextBox ID="TextBox6" class="login__input" type="password" runat="server" placeholder="Password"></asp:TextBox>
			
           </div>
		    <div class="login__field">
		        <i class="login__icon fas fa-lock"></i>
		         <asp:TextBox ID="TextBox7" class="login__input" type="password" runat="server" placeholder="confirm password"></asp:TextBox>
           </div>
			
		     <div class="login__field">
                   <i class="login__icon fas fa-lock"></i>
				 <asp:FileUpload ID="FileUpload1" runat="server" />

			 </div>

				
			<asp:Button ID="Button1"  class="button login__submit" runat="server" OnClientClick="return validate();" Text="REGISTER" OnClick="Button1_Click" />
			<asp:Button ID="Button2" class="clear" runat="server" Text="CLEAR" OnClick="Button2_Click" />
			<asp:HyperLink ID="HyperLink1" class="hyp" runat="server" NavigateUrl="logtemp.aspx">ALREADY HAVE AN ACCOUNT ?</asp:HyperLink>
			
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
        </div>
    </form>
</body>
</html>
