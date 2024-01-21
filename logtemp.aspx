﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logtemp.aspx.cs" Inherits="WebApplication2.logtemp" %>

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
	margin-top:206px;
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
	margin-top:0px;
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
	margin-top: 64px;
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
    top: 92px;
    left: 2px;
    z-index: 1;
    width: 130px;
    height: 37px;
    border-radius: 3px;
        }
	    .auto-style2 {
            position: absolute;
            top: 216px;
            left: 0px;
        }
	</style>
	
</head>
<body>
	
    <form id="form1" runat="server">
        <div>
            <div class="container">
				
	<div class="screen">
		<div class="screen__content">
			
				<div class="login__field">
					<asp:Label ID="Label2" runat="server" class="login1" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
					<asp:Label ID="Label1" runat="server" class="login1" Text="LOGIN"></asp:Label>
					<i class="login__icon fas fa-user"></i>
					<asp:TextBox ID="TextBox1" class="login__input" runat="server" placeholder="User name"></asp:TextBox>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<asp:TextBox ID="TextBox2" class="login__input" type="password" runat="server" placeholder="Password"></asp:TextBox>
						
				</div>
				<asp:Button ID="Button1" class="button login__submit" runat="server" Text="Log In Now" OnClick="Button1_Click" />
				
			<asp:DropDownList ID="DropDownList1" runat="server" stlye="width: 75%;" CssClass="auto-style1" >
                <asp:ListItem Selected="True">USER</asp:ListItem>
                <asp:ListItem>ADMIN</asp:ListItem>
                </asp:DropDownList>
				
				<asp:HyperLink ID="HyperLink1" runat="server" class="here" ForeColor="#4C489D" NavigateUrl="regform.aspx" CssClass="auto-style2" style="z-index: 1">DONT HAVE AN ACCOUNT ?</asp:HyperLink>
					
			
			
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
