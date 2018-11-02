<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="WebApplication3.Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="Content/style.css" type="text/css" />
</head>
<body>
   <form id="form1" runat="server" align="center">
               <div class="navDiv">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

			<strong> <a class="navbar-brand" href="#">IDS520 -
					Group K</a>
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
					<div class="card-header"><h4 class="card-title">Sign-Up</h4></div>
					<div class="card-body">
<h:panelGrid columns="2">
        <br />
    <div class="row">
    <asp:Label  class="column" runat="server" Text="Last-Name" ></asp:Label>
        <asp:TextBox class="column" ID="lastName" runat="server"  style="margin-left: 65px" styleClass="form-control" Height="23px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="lastName"
  ErrorMessage="last Name is a required field."
  ForeColor="Red" validationgroup="ForPanel2">
</asp:RequiredFieldValidator>
        <br />
        </div>

    <div class="row">
    <asp:Label  class="column" runat="server" Text="First-Name" ></asp:Label>
        <asp:TextBox class="column" ID="firstName" runat="server" style="margin-left: 64px" styleClass="form-control" Height="23px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="firstName"
  ErrorMessage="First Name is a required field."
  ForeColor="Red" validationgroup="ForPanel2">
            </asp:RequiredFieldValidator>
        <br />
        </div>

    <div class="row">
            <asp:Label  class="column" runat="server" Text="E-mail" ></asp:Label>
<asp:TextBox ID="Email" class="column" runat="server" style="margin-left: 93px" styleClass="form-control" Height="23px" TextMode="email"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
  ControlToValidate="Email"
  ErrorMessage="Email ID is a required field."
  ForeColor="Red" validationgroup="ForPanel2">
            </asp:RequiredFieldValidator>
        <br />
        </div>

    
    <div class="row">
            <asp:Label  runat="server" class="column" Text="Password" ></asp:Label>

        <asp:TextBox ID="Password" class="column" style="margin-left: 75px" styleClass="form-control"  runat="server" Height="23px" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" 
     ErrorMessage="&laquo; (Required)" 
     ControlToValidate="Password"
     CssClass="ValidationError"
    ToolTip="Password is a REQUIRED field" validationgroup="ForPanel2"
    ></asp:RequiredFieldValidator>
        <br />
         </div>

    
    <div class="row">
           <asp:Label  runat="server" class="column" Text="Confirm Password" ></asp:Label>

        <asp:TextBox ID="ConfPassword" class="column" runat="server" style="margin-left: 23px" styleClass="form-control" Height="23px" TextMode="Password"></asp:TextBox>

        <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="ConfPassword"
     CssClass="ValidationError"
     ControlToCompare="Password"
     ErrorMessage="Password must be the same" 
     ToolTip="Password must be the same" validationgroup="ForPanel2"/>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
     ErrorMessage="&laquo; (Required)" 
     ControlToValidate="ConfPassword"
     CssClass="ValidationError"
     ToolTip="Compare Password is a REQUIRED field" validationgroup="ForPanel2">
    </asp:RequiredFieldValidator>

    </div>
    </div>

        <br />
             <div class="card-footer">
                 <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
                 <br />
                 <br />
        <asp:Button ID="SignUp" runat="server" styleClass="btn btn-secondary" OnClick="SignUp_Click"  Text="Create User" validationgroup="ForPanel2" />
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" Width="112px" />
                   </div>
        <br />
            </div>
            </center>
    </form>
</body>
</html>
