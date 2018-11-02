<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reserved Seats.aspx.cs" Inherits="WebApplication3.Reserved_Seats" %>

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
					Group K</a>
			</strong>

             <button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
                </div>
        <div class="card text-white bg-dark mb-3"
					style="max-width: fit-content;">
       <div class="card-body">
     <h:panelGrid columns="2">
    <asp:Label ID="Label1" runat="server" Text="Event Selected: " ></asp:Label>
          <asp:Label ID="Label4" runat="server" style="margin-left: 30px"><strong><% =Event_Name %></strong></asp:Label>
      </br></br>
             <asp:Label ID="Label2" runat="server" Text="Date Selected: " ></asp:Label>
                   <asp:Label ID="Label5" runat="server" style="margin-left: 30px"><strong><% =Event_Date %></strong></asp:Label>

      </br></br>
             <asp:Label ID="Label3" runat="server" Text="Time Selected: " ></asp:Label>
                            <asp:Label ID="Label6" runat="server" style="margin-left: 30px"><strong><% =Event_Time %></strong></asp:Label>

       
        </h:panelGrid>
    </div>   </div>

        <div class="card text-white bg-dark mb-3"
					style="max-width: fit-content;">
					<div class="card-header"><h4 class="card-title">Reservations</h4></div>
					<div class="card-body">


        <asp:Table ID="seattable" runat="server" border="0" Height="209px" Width="320px">
            <asp:TableRow>
                <asp:TableCell ID="TableCell1" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0101" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" OnClick="s0101click" Enabled="false"
 />
                                                        1</asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0102" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0102click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0103" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" OnClick="s0103click" Enabled="false"
 />3</asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0104" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0104click" Enabled="false"
 />4</asp:TableCell>
                <asp:TableCell ID="TableCell5" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0105" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0105click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0106" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0106click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0107" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0107click" Enabled="false"
 />7</asp:TableCell>
                <asp:TableCell ID="TableCell8" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0108" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0108click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell9" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0109" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0109click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell10" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0110" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0110click" Enabled="false"
/>10</asp:TableCell>
                <asp:TableCell ID="TableCell101" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0111" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0111click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell102" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0112" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0112click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell103" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0113" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0113click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell104" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0114" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0114click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell105" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0115" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0115click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ID="TableCell11" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0201" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0201click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell12" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0202" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0202click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell13" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0203" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0203click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell14" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0204" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0204click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell15" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0205" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0205click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell16" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0206" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0206click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell17" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0207" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0207click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell18" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0208" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0208click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell19" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0209" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0209click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell20" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0210" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0210click" Enabled="false"
/>10</asp:TableCell>
                                <asp:TableCell ID="TableCell106" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0211" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0211click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell107" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0212" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0212click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell108" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0213" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0213click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell109" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0214" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0214click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell110" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0215" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0215click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell ID="TableCell30" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0301" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0301click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell21" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0302" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0302click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell22" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0303" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0303click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell23" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0304" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0304click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell24" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0305" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0305click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell25" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0306" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0306click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell26" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0307" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0307click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell27" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0308" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0308click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell28" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0309" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0309click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell29" runat="server" class="seatCell" valign="middle">
                                                    <asp:ImageButton ID="s0310" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0310click" Enabled="false"
/>10</asp:TableCell>
                                <asp:TableCell ID="TableCell111" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0311" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0311click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell112" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0312" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0312click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell113" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0313" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0313click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell114" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0314" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0314click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell115" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0315" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0315click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell ID="TableCell31" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0401" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0401click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell32" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0402" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0402click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell33" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0403" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0403click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell34" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0404" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0404click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell35" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0405" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0405click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell36" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0406" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0406click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell37" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0407" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0407click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell38" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0408" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0408click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell39" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0409" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0409click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell40" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0410" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0410click" Enabled="false"
/>10</asp:TableCell>
                                <asp:TableCell ID="TableCell116" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0411" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0411click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell117" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0412" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0412click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell118" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0413" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0413click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell119" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0414" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0414click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell120" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0415" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0415click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell ID="TableCell41" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0501" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0501click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell42" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0502" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0502click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell43" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0503" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0503click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell44" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0504" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0504click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell45" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0505" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0505click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell46" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0506" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0506click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell47" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0507" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0507click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell48" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0508" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0508click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell49" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0509" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0509click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell50" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0510" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0510click" Enabled="false"
/>10</asp:TableCell>
                                            <asp:TableCell ID="TableCell121" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0511" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0511click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell122" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0512" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0512click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell123" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0513" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0513click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell124" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0514" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0514click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell125" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0515" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0515click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell ID="TableCell51" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0601" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0601click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell52" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0602" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0602click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell53" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0603" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0603click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell54" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0604" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0604click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell55" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0605" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0605click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell56" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0606" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0606click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell57" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0607" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0607click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell58" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0608" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0608click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell59" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0609" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0609click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell60" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0610" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0610click" Enabled="false"
/>10</asp:TableCell>
                                            <asp:TableCell ID="TableCell126" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0611" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0611click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell127" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0612" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0612click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell128" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0613" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0613click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell129" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0614" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0614click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell130" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0615" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0615click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell ID="TableCell61" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0701" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0701click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell62" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0702" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0702click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell63" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0703" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0703click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell64" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0704" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0704click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell65" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0705" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0705click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell66" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0706" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0706click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell67" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0707" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0707click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell68" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0708" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0708click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell69" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0709" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0709click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell70" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0710" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0710click" Enabled="false"
/>10</asp:TableCell>
                                            <asp:TableCell ID="TableCell131" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0711" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0711click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell132" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0712" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0712click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell133" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0713" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0713click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell134" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0714" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0714click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell135" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0715" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0715click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell ID="TableCell71" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0801" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0801click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell72" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0802" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0802click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell73" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0803" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0803click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell74" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0804" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0804click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell75" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0805" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0805click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell76" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0806" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0806click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell77" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0807" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0807click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell78" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0808" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0808click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell79" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0809" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0809click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell80" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0810" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0810click" Enabled="false"
/>10</asp:TableCell>
                                            <asp:TableCell ID="TableCell136" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0811" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0811click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell137" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0812" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0812click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell138" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0813" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0813click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell139" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0814" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0814click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell140" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0815" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0815click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell ID="TableCell81" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0901" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0901click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell82" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0902" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0902click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell83" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0903" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0903click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell84" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0904" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0904click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell85" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0905" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0905click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell86" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0906" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0906click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell87" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0907" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0907click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell88" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0908" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0908click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell89" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0909" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0909click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell90" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0910" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0910click" Enabled="false"
/>10</asp:TableCell>
                                            <asp:TableCell ID="TableCell141" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0911" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0911click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell142" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0912" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0912click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell143" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0913" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0913click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell144" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0914" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0914click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell145" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s0915" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s0915click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell ID="TableCell91" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1001" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1001click" Enabled="false"
/>1</asp:TableCell>
                <asp:TableCell ID="TableCell92" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1002" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1002click" Enabled="false"
/>2</asp:TableCell>
                <asp:TableCell ID="TableCell93" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1003" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1003click" Enabled="false"
/>3</asp:TableCell>
                <asp:TableCell ID="TableCell94" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1004" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1004click" Enabled="false"
/>4</asp:TableCell>
                <asp:TableCell ID="TableCell95" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1005" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1005click" Enabled="false"
/>5</asp:TableCell>
                <asp:TableCell ID="TableCell96" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1006" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1006click" Enabled="false"
/>6</asp:TableCell>
                <asp:TableCell ID="TableCell97" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1007" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1007click" Enabled="false"
/>7</asp:TableCell>
                <asp:TableCell ID="TableCell98" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1008" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1008click" Enabled="false"
/>8</asp:TableCell>
                <asp:TableCell ID="TableCell99" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1009" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1009click" Enabled="false"
/>9</asp:TableCell>
                <asp:TableCell ID="TableCell100" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1010" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1010click" Enabled="false"
/>10</asp:TableCell>
                                            <asp:TableCell ID="TableCell146" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1011" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1011click" Enabled="false"
/>11</asp:TableCell>
                <asp:TableCell ID="TableCell147" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1012" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1012click" Enabled="false"
/>12</asp:TableCell>
                <asp:TableCell ID="TableCell148" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1013" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1013click" Enabled="false"
/>13</asp:TableCell>
                <asp:TableCell ID="TableCell149" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1014" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1014click" Enabled="false"
/>14</asp:TableCell>
                <asp:TableCell ID="TableCell150" runat="server" class="seatCell" valign="middle">
                                                        <asp:ImageButton ID="s1015" ImageUrl="~/Images/available_seat_img.gif" runat="server" OnClick="s1015click" Enabled="false"
/>15</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
                        <asp:Button ID="Modify" runat="server" OnClick="Modify_Click" Text="Modify" />
        <asp:Button ID="back" runat="server" OnClick="back_Click" style="margin-left: 280px" Text="Back" Width="136px" />
    </form>
</body>
</html>
