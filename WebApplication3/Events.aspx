<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="WebApplication3.Events" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
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
<body style="margin-left: 7px"> 
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
 <center>
        <div class="card text-white bg-dark mb-3"
					style="max-width: fit-content;">
					<div class="card-header"><h4 class="card-title">Events</h4></div>
					<div class="card-body">
<h:panelGrid columns="2">
    <asp:Label ID="Label1" runat="server" Text="Select Event:" ></asp:Label>
     
     <asp:DropDownList ID="DropDownList1" runat="server" size="1"  
								styleClass="form-control" onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="true"  required="required" style="margin-left: 50px;width:150px; overflow:hidden;">
    <asp:ListItem Value="0">--Select Event--</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfvType" runat="server" ControlToValidate="DropDownList1" 
                            InitialValue="0" ErrorMessage="Event Name required"  ForeColor="Red" validationgroup="ForPanel"></asp:RequiredFieldValidator>

        <br />
   <asp:Label ID="Label2" runat="server" Text="Select Date:" ></asp:Label>
    
    <asp:DropDownList ID="DropDownList2" runat="server" styleClass="form-control" size="1"  onselectedindexchanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="true" style="margin-left: 55px;width:150px; overflow:hidden;"  required="required">
    <asp:ListItem Value="0"> --Select  Date-- </asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" 
                            InitialValue="0" ErrorMessage="Event Date required"  ForeColor="Red" validationgroup="ForPanel"></asp:RequiredFieldValidator>
    <br />


     <asp:Label ID="Label3" runat="server" Text="Select Time:" ></asp:Label>
    
    <asp:DropDownList ID="DropDownList3" runat="server" styleClass="form-control" size="1"  onselectedindexchanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="true" style="margin-left: 50px;width:150px; overflow:hidden;" required="required">
    <asp:ListItem Value="0">--Select Time--</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" 
                            InitialValue="0" ErrorMessage="Event Time required"  ForeColor="Red" validationgroup="ForPanel"></asp:RequiredFieldValidator>

        </h:panelGrid>
    </div>
        <br />


<div class="card-footer">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Text="Submit" validationgroup="ForPanel" />
        &nbsp;<p>
    </div>
 
     
    <div class="card-footer">
    <asp:Button ID="CheckReserv" runat="server"  OnClick="CheckReserv_Click"  Text="Check Reservations" />
    <asp:Button ID="Button2" runat="server" style="margin-left: 40px" OnClick="Button2_Click"  Text="Logout" />
    </div>
     </div>

      </center>


</form>
</body>  
</html>