<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="Content/style.css" type="text/css" />
    <style>
        body {
    background-image: url("https://i.pinimg.com/originals/a6/61/81/a661814faf4d99a8577a92c11c8a00ab.jpg");
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
               <div class="navDiv">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

			<strong> <a class="navbar-brand" href="#">IDS520 -
					Group K Movie Theater</a>
			</strong>

             <button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
                </div>

        <div>
        </div>
        <center>
        <div class="card text-white bg-dark mb-3"
					style="max-width: fit-content;">
					<div class="card-header"><h4 class="card-title">Login</h4></div>
					<div class="card-body">
<h:panelGrid columns="2">
    <asp:Label ID="Label1" runat="server" Text="E-mail      " ></asp:Label>

        <asp:TextBox ID="Email_ID" runat="server" style="margin-left: 35px" styleClass="form-control" TextMode="email"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="Email_ID"
  ErrorMessage="Email ID is a required field."
  ForeColor="Red" validationgroup="ForPanel1">
</asp:RequiredFieldValidator>
        <br />
    <br />
   <asp:Label ID="UserID0" runat="server" Text="Password" ></asp:Label>
        <asp:TextBox ID="Password" runat="server" style="margin-left: 18px" styleClass="form-control" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="Password"
  ErrorMessage="Password is a required field."
  ForeColor="Red" validationgroup="ForPanel1">
</asp:RequiredFieldValidator>

    </h:panelGrid>
    </div>
        <br />
        
        <div class="card-footer">
        <asp:Button ID="login_button" runat="server" styleClass="btn btn-secondary" OnClick="login_button_Click"  Text="Login" validationgroup="ForPanel1"/>
&nbsp;<p>
                <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
    </div>

 <div class="card-footer">
            <asp:Button ID="Button1" runat="server" styleClass="btn btn-secondary" OnClick="Button1_Click" style="margin-left: 40px" Text="Sign Up" Width="115px" />
            <asp:Button ID="Button2" runat="server" styleClass="btn btn-secondary" style="margin-left: 55px" Text="Forgot Password" Width="158px" OnClick="Button2_Click" />
     </div>  
            </div>
            </center>
                <asp:Image ID="Image1" runat="server" Height="58px" ImageUrl="https://vignette.wikia.nocookie.net/lakewood-plaza-turbo/images/e/ec/Reddit_Logo.png/revision/latest?cb=20180603190206" Width="58px" />
                <asp:Image ID="Image2" runat="server" Height="58px" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/2000px-F_icon.svg.png" Width="58px" />
                <asp:Image ID="Image3" runat="server" Height="58px" ImageUrl="https://www.edigitalagency.com.au/wp-content/uploads/instagram-logo-png-transparent-background-800x799.png" Width="58px" />
     
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
