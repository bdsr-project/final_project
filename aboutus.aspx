<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <style>
        body
        {
            background-color:#CFDAC8;

        }

        .auto-style1 {
            width: 69px;
            height: 39px;
            margin-top: 2px;
        }

        .auto-style2 {
            width: 455px;
        }

    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script> 
        $(document).ready(function () {
                var div = $("#happyshop");
                div.animate({ left: '100px' }, "slow");
                div.animate({ fontSize: '3em' }, "slow");
        });
    </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <header>
            <h1 id="happyshop" style="text-align: center">Happy Shop
                <img alt="happy shop" class="auto-style1" src="imgs/happyshop.jpg" style="font-size: small"/></h1>
            <h4 style="margin: 0px auto auto auto; padding: 1px; text-align: right">A new trend in online shopping.</h4>
        </header>
        <section>
            <p>
                Dear Customers,
            </p>
            <p>
                We were excited to serve you in all possible means. We provide a large varieties of products in all categories. Our core motto is to satisfy every customer through out the order process. 
                We have a easy shipping process to almost each and every part of the country. We have a easy return and replacement policy. 
                So, our customers will not face any problem if they are not satisfied with the product.
            </p>
            <p>
                We have the most rated e-commerce&nbsp; website as published by the FORBES. We promise you that we will serve you with same enthusiasm and joy. 
                Your loyalty and trust in us has not only helped us sustain our business, but also helped us support our growing community of artisans and delivery partners. Your love and support for HappyShop during these tough tmes is priceless. We are truly delighted each time we allow to serve you.</p>
            <p>
                Happy shopping with us.
            </p>
            <video width="400" height="400" autoplay >
                <source src="videos/homendecor.mp4"/>
            </video>
            
             <video width="400" height="400" autoplay>
                <source src="videos/oppo.mp4"/>
            </video>
           
            <video width="400" height="400" autoplay>
                <source src="videos/wrogn.mp4"/>
            </video>
        </section>
        <footer style="background-color:#f8f1f1">
            <h3>Contact us:</h3>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2" style="font-family: 'Arial Black'; font-size: 14px">Mail us:</td>
                        <td style="font-size: 14px; font-family: 'Arial Black';">Registered Office Address:</td>
                        <td style="font-size: 14px; font-family: 'Arial Black';">Help</td>
                        <td style="font-size: 14px; font-family: 'Arial Black';">Policy</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">ramcharan1412@gmail.com</td>
                        <td class="auto-style2">HappyShop Interent Private Limited</td>
                        <td class="auto-style2">Payments</td>
                        <td class="auto-style2">Terms of Use</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">HappyShop Interent Private Limited</td>
                        <td class="auto-style2">Building Alyassa, Begonia</td>
                        <td class="auto-style2">Shipping</td>
                        <td class="auto-style2">Security</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Building Alyassa, Begonia</td>
                        <td class="auto-style2">Clove Embassy Tech Park</td>
                        <td class="auto-style2">Cancellation &amp; Returns</td>
                        <td class="auto-style2">Privacy</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Clove Embassy Tech Park</td>
                        <td class="auto-style2">Outer Ring Road, Banglore</td>
                        <td class="auto-style2">FAQ</td>
                        <td class="auto-style2">Sitemap</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Outer Ring Road, Hyderabad</td>
                        <td class="auto-style2">Karanataka - 560103</td>
                        <td class="auto-style2">Report Infringment</td>
                        <td class="auto-style2">EPR Compliance</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Telangana - 500097</td>
                        <td class="auto-style2">India</td>
                        <td class="auto-style2">Return Policy</td>
                        <td class="auto-style2">Press</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">India</td>
                        <td>Telephone: 040-42007777</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </footer>

    </div>
    </form>
</body>
</html>
