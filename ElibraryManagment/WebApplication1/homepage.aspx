<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our Primary Features</b></p>
                    </center>
                </div>  
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/digital-inventory.png" />
                    <h4>Digital Book Inventory</h4>
                    <p class="text-justify">Our digital inventory system provides quick access to a diverse selection of books with efficient cataloging and search features,
                        ensuring effortless discovery and a seamless browsing experience.</p>
                    </center>
                </div>  
                 <div class="col-md-4">
                     <center>
                     <img width="150px" src="imgs/search-online.png" />
                     <h4>Search Books</h4>
                     <p class="text-justify">Quickly find your next read with our intuitive search and advanced filters.
                         Explore bestsellers and niche titles effortlessly in our user-friendly interface..</p>
                     </center>
                 </div>  
                 <div class="col-md-4">
                     <center>
                     <img width="150px" src="imgs/defaulter-list.png" />
                     <h4>Default List</h4>
                     <p class="text-justify">Explore curated selections across various interests.
                         Our default list offers a convenient starting point with classics, new releases, and specialized topics.</p>
                     </center>
                 </div>  
            </div>
        </div>
    </section>

    <section>
        <img src="imgs/in-homepage-banner.jpg" class="img-fluid" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Approach</h2>
                        <p><b>Our easy 3-step sequence</b></p>
                    </center>
                </div>  
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/librarys.png" />
                    <h4>Visit Us</h4>
                    <p class="text-justify">Explore our space and discover a world of books. We look forward to welcoming you to our cozy reading environment..</p>
                    </center>
                </div>  
                 <div class="col-md-4">
                     <center>
                     <img width="150px" src="imgs/sign-up.png" />
                     <h4>Sign Up</h4>
                     <p class="text-justify">Join our community and stay updated on the latest releases, special offers, and literary events. Don't miss out—sign up today!</p>
                     </center>
                 </div>  
                 <div class="col-md-4">
                     <center>
                     <img width="150px" src="imgs/search-online.png" />
                     <h4>Search Books</h4>
                     <p class="text-justify">Find your next read quickly with our intuitive search feature. Explore a wide range of genres and topics effortlessly.</p>
                     </center>
                 </div>  
            </div>
        </div>
    </section>

</asp:Content>
