<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_files.aspx.cs" Inherits="Auditor_manage_files" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>


<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Dream Business a Business Category Bootstrap Responsive Website Template | About :: W3layouts</title>
  <!-- web fonts -->
  <link href="/../fonts.googleapis.com/css?family=Poppins:100,300,400,500,600,700,800,900&amp;display=swap" rel="stylesheet">
  <link href="/../fonts.googleapis.com/css?family=Hind&amp;display=swap" rel="stylesheet">
  <!-- //web fonts -->
    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
      <style type="text/css">
          .auto-style1 {
              width: 144px;
          }
          .auto-style3 {
              width: 103px;
          }
          .auto-style4 {
              width: 205px;
          }
          .auto-style5 {
              width: 238px;
          }
      </style>
  </head>
  <body>

<form id="Form1" runat="server">


<!-- Top Menu 1 -->

<!-- //Top Menu 1 -->
<section class="w3l-bootstrap-header">
  <nav class="navbar navbar-expand-lg navbar-light py-lg-2 py-2">
    <div class="container">
      <a class="navbar-brand" href="index.html"><span>D-</span>Business</a>
      <!-- if logo is image enable this   
    <a class="navbar-brand" href="#index.html">
        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
    </a> -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon fa fa-bars"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto">
        <li class="nav-item">
            <a class="nav-link" href="auditor_home.aspx">Home</a>
          </li>
          <%--<li class="nav-item">
            <a class="nav-link" href="manage_files.aspx">Manage Files</a>
          </li>--%>
             <li class="nav-item">
            <a class="nav-link" href="view_complaints.aspx">View Complaints

            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../Index/index.aspx">Logout</a>
          </li>
        
        
        </ul>
        <p>For Support Call<span class="fa fa-headphones pl-1"></span><br><a href="tel:900-369-8527">900-369-8527</a></p>
      </div>
    </div>
  </nav>
</section>


<section class="w3l-about-breadcrum"  >
  <div class="breadcrum-bg py-sm-5 py-4">
    <div class="container py-lg-3 py-2">
     <%-- <h2 align="center">Registered users</h2>--%>
        <div style="text-align:center">
          &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:Image ID="Image2" runat="server"  CssClass="img img-responsive img-circle" Height="100px" Width="100px" />
         <h4 style="color:white">Files of   <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#006600" Font-Bold="True" Font-Italic="True" ></asp:Label> </h4>
    </div>
    </div>
  </div>
</section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-1">

                </div>
                <div class="col-5">


                   <br />
                    <br />
                    <br />

                  <h2>Uploaded Files</h2>
                  <div style="overflow:scroll;height:300px" >

                    <asp:DataList ID="DataList1" runat="server" CssClass="table table-hover" RepeatColumns="2" RepeatDirection="Horizontal" >
                        <ItemTemplate>
                            <table class="table table-hover">
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;
                                        <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/Auditor/assets/images/folder.jpg" Width="131px" />
                                        &nbsp;</td>

                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                       <asp:Label ID="Label2" runat="server" Text='<%# bind("filename") %>' ForeColor="Green"></asp:Label>
                                        &nbsp;<br /></td>

                                </tr>
                                <tr>
                                    <td>
                                         &nbsp;&nbsp;&nbsp;&nbsp; Date
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("upload_date") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    </div>
                </div>
                <div class="col-5">
                    <br />
                    <br />
                    <br />
                    
                    <table class="table table-info table-hover" style="width:600px;height:300px">
                        <tr>
                            <th colspan="2" align="center">File Details</th>
                        </tr>
                        <tr>
                            <td style="color:blue">  Total Uploaded Files </td>
                             <td> <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Blue"></asp:Label> </td>
                        </tr>
                        <tr>
                            <td style="color:red">  DuplicatedFiles </td>
                             <td> <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="Red"></asp:Label> </td>
                        </tr>
                        <tr>
                            <td style="color:green">  Non Duplicated Files </td>
                             <td> <asp:Label ID="Label6" runat="server" Text="Label" ForeColor="Green"></asp:Label> </td>
                        </tr>
                    </table>



                    <br />

                </div>
                <div class="col-1">

                </div>
            </div>
            <div class="row">
                  <br />
                <h2>Non Duplicated Files </h2>
                <br />
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="table table-hover" OnDeleteCommand="DataList2_DeleteCommand" OnUpdateCommand="DataList2_UpdateCommand">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td style="text-align: center" class="auto-style5">&nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/Auditor/assets/images/folder.jpg" Width="131px" />
                                    &nbsp;
                                    <asp:Label ID="Label10" runat="server" Text='<%# bind("fid") %>' Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; vertical-align: middle" class="auto-style5" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text='<%# bind("filename") %>' Font-Bold="true"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: center; vertical-align: middle" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text="Full Duplications  :"></asp:Label>
                                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="#0033CC" CommandName="update">View Details</asp:LinkButton>
                                </td>
                                 <td style="text-align: center; vertical-align: middle" class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" style="text-align: center; vertical-align: middle">Partial Duplications:<br />
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="#0033CC" CommandName="delete">View Details</asp:LinkButton>
                                </td>
                                <td class="auto-style3" style="text-align: center; vertical-align: middle">
                                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        
    </section>
<!-- content-with-photo4 block -->
</form>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!-- //footer-28 block -->

<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
</script>

<!-- Template JavaScript -->
<script src="assets/js/all.js"></script>
<!-- Smooth scrolling -->
<!-- <script src="assets/js/smoothscroll.js"></script> -->
<script src="assets/js/owl.carousel.js"></script>

<!-- script for -->
<script>
    $(document).ready(function () {
        $('.owl-one').owlCarousel({
            loop: true,
            margin: 0,
            nav: true,
            responsiveClass: true,
            autoplay: false,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                480: {
                    items: 1,
                    nav: false
                },
                667: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<!-- //script -->

</body>

</html>