<%@ Page Language="C#" AutoEventWireup="true" CodeFile="auditor_home.aspx.cs" Inherits="Auditor_auditor_home" %>

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
  </head>
  <body>

<form runat="server">


<!-- Top Menu 1 -->
<section class="w3l-top-menu-1">
	<div class="top-hd">
		<div class="container">
	<header class="row">
		<div class="social-top col-sm-6 col-6 pl-0">
			<li>Welcome to Coporate Business</li>
			
		</div>
		<div class="accounts col-sm-6 col-6 pr-0">
				<li class="top_li1"><a href="#">Login</a></li>
				<li class="top_li2"><a href="#">Register</a></li>
		</div>
		
	</header>
</div>
</div>
</section>
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
         <%-- <li class="nav-item">
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
      <h2 align="center">Registered users</h2>

        
    
    </div>
  </div>
</section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-1">

                </div>
                <div class="col-10">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-thumbnail table-hover" Font-Bold="True" Width="100%" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" >
            <Columns>
                <asp:TemplateField HeaderText="Users">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="94px" ImageUrl='<%# bind("photo") %>' Width="137px" CssClass="img img-circle img-thumbnail"  />
                    </ItemTemplate>
                    <ItemStyle ForeColor="Black" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="Name" />

                <asp:BoundField DataField="username" HeaderText="Email" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="update" Font-Underline="True" CssClass="btn btn-block btn-primary">Manage Files</asp:LinkButton>
                         <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete" Font-Underline="True" CssClass="btn btn-block btn-dark"> Give Feedbacks</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle ForeColor="Black" HorizontalAlign="Center" />
        </asp:GridView>
                </div>
                <div class="col-1">

                </div>
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