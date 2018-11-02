<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebApplication3.ShoppingCart" %>

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
					<div class="card-header"><h4 class="card-title">Shopping Cart</h4></div>
					<div class="card-body">
        <div>
            <asp:GridView ID="reservTable" runat="server" AutoGenerateColumns="false" style="text-align:center" OnSelectedIndexChanged="reservTable_SelectedIndexChanged">
                <Columns  >
                    <asp:BoundField DataField="Event" HeaderText ="Event" />
                    <asp:BoundField DataField="Date" HeaderText ="Date" />
                    <asp:BoundField DataField="Time" HeaderText ="Time" />
                   <asp:BoundField DataField="Number_of_Reservations" HeaderText ="Your Reserved Seats" />
                    <asp:TemplateField HeaderText ="Remove from cart">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkSelect" Text="Remove" runat="server" CommandName="Select" CommandArgument='<%# Eval("Event") + ";" +Eval("Date") + ";" +Eval("Time")%>' OnClick="lnkSelect_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div></</div>
        <div>
            <div class="card-footer">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" styleClass="btn btn-secondary" style="margin-left: 40px" Text="Checkout" />
                 
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" styleClass="btn btn-secondary" style="margin-left: 55px" Text="Back to Events" />
        </div> </div> </div></div> </div>
    </form>
</body>
</html>
