<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    background-image: url("https://i.pinimg.com/originals/a6/61/81/a661814faf4d99a8577a92c11c8a00ab.jpg");
}
    </style>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="Content/style.css" type="text/css" />
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

					
        <div class="card-footer">
        <asp:Button ID="Button1" runat="server" styleClass="btn btn-secondary" OnClick="Button1_Click" Text="Click me to Explore" />
            </div>
                
    </form>
</body>
</html>
