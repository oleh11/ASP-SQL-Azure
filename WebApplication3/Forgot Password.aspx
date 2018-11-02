<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot Password.aspx.cs" Inherits="WebApplication3.Forgot_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="Content/style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

                       <div class="navDiv">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

			<strong> <a class="navbar-brand" href="#">IDS520 -
					Group K Movie Theater Password Retrieval</a>
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
					<div class="card-header"><h4 class="card-title">Forgot Password</h4></div>
					<div class="card-body">

  <div class="row">
        <asp:Label ID="Email_ID" runat="server" class="column" Text="Email_ID" TextMode="email"></asp:Label>
        <asp:TextBox ID="Email" runat="server" class="column"  styleClass="form-control" style="margin-left: 75px"></asp:TextBox>
        <br />
      </div>
                        <div class="row">
        <asp:Label ID="New_Pass" runat="server"  class="column" Text="New Password" ></asp:Label>
        <asp:TextBox ID="New_password" runat="server"  class="column" style="margin-left:39px" styleClass="form-control" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
     ErrorMessage="&laquo; (Required)" 
     ControlToValidate="New_password"
     CssClass="ValidationError"
    ToolTip="Password is a REQUIRED field"
    ></asp:RequiredFieldValidator>
                            </div>
        

  <div class="row">
        <asp:Label ID="New_Pass0" runat="server" class="column" Text="Confirm Password" ></asp:Label>
        <asp:TextBox ID="Confirm_new_pass" runat="server" class="column" style="margin-left:18px" styleClass="form-control" TextMode="Password"></asp:TextBox>

        <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="Confirm_new_pass"
     CssClass="ValidationError"
     ControlToCompare="New_password"
     ErrorMessage="Password must be the same" 
     ToolTip="Password must be the same" />

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
     ErrorMessage="&laquo; (Required)" 
     ControlToValidate="Confirm_new_pass"
     CssClass="ValidationError"
     ToolTip="Compare Password is a REQUIRED field">
    </asp:RequiredFieldValidator>
      </div>
    </div>
        <br />
        <br />
            <div class="card-footer">
        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" styleClass="btn btn-secondary" Text="Submit" />
                &nbsp;<p>
    </div>

              </div>
             </center>
    </form>
</body>
</html>
