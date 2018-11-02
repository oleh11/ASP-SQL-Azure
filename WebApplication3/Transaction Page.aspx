<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction Page.aspx.cs" Inherits="WebApplication3.Transaction_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="Content/style.css" type="text/css" />
</head>
<body>
    <style>
        body {
    background-image: url("https://i.pinimg.com/originals/a6/61/81/a661814faf4d99a8577a92c11c8a00ab.jpg");
}
    </style>
    <form id="form1" runat="server" align="center">

                               <div class="navDiv">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

			<strong> <a class="navbar-brand" href="#">IDS520 -
					Group K Movie Theater</a>
			</strong>
                <style>
        body {
    background-image: url("http://dailyrunneronline.com/wp-content/uploads/2014/02/o-THEATER-SEATS-facebook.jpg");
}
    </style>
             <button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
                </div> 

        <div>
        </div>

         <div class="card text-white bg-dark mb-3"
					style="max-width: fit-content;">
					<div class="card-header"><h4 class="card-title"><strong> Transaction Page</strong></h4></div>
					<div class="card-body">
        <div>

        <div>
               <h:panelgrid columns="1">
            <asp:Label ID="count" runat="server" ForeColor="White"></asp:Label>
            <br />
            <strong> Thank you for using our site! </strong><br />
            <br />
                    </h:panelgrid>

            <div class="card-footer">
            <asp:Button ID="Events" runat="server" OnClick="Events_Click" Text="Browse More Events" styleClass="btn btn-secondary" style="margin-left: 40px" Width="227px" />
&nbsp;<asp:Button ID="Logout" runat="server" OnClick="Logout_Click" styleClass="btn btn-secondary" style="margin-left: 40px" Text="Logout" />
        </div></div> </div> </div> </div> 
    </form>
</body>
</html>
