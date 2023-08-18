<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ERPSYSTEM.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .column {
          float: left;
          width: 33.33%;
          padding: 10px;
        }
        /* Clear floats after image containers */
        .row::after {
          content: "";
          clear: both;
          display: table;
        }
        .paragraph p{
            text-align: justify;
            color: black;
        }
        .paragraph p {
            text-align: justify;
            color: mediumslateblue;
        }
    </style>

    <div class="row">
        <div class="column">
            <img src="img/m1.jpg" alt="images1" style="width: 100%">
        </div>
        <div class="column">
            <img src="img/m2.jpg" alt="images2" style="width: 100%">
        </div>
        <div class="column">
            <img src="img/m4.jpg" alt="images2" style="width: 100%">
        </div>
    </div>
    <div class="paragraph"> <p>Are you ready to take your business to the next level? Whether you’re starting a new venture or seeking funding for an existing company, a well-crafted business plan is essential. But with so many elements to consider, creating a plan from scratch can be overwhelming.

Fortunately, we’ve got you covered. Our website offers a wide selection of free business plan templates that you can download and use to create a plan that works for your business. Our templates are designed to help you save time, stay organized, and develop a comprehensive plan that will set you up for success.

Don’t let the thought of creating a business plan overwhelm you. Download one of the free business plan templates today and get started on the path to success. With the right tools and a solid plan in place, you can achieve your business goals and take your company to the next level.</p>
    <p>Are you ready to take your business to the next level? Whether you’re starting a new venture or seeking funding for an existing company, a well-crafted business plan is essential. But with so many elements to consider, creating a plan from scratch can be overwhelming.

Fortunately, we’ve got you covered. Our website offers a wide selection of free business plan templates that you can download and use to create a plan that works for your business. Our templates are designed to help you save time, stay organized, and develop a comprehensive plan that will set you up for success.

Don’t let the thought of creating a business plan overwhelm you. Download one of the free business plan templates today and get started on the path to success. With the right tools and a solid plan in place, you can achieve your business goals and take your company to the next level.</p></div>
</asp:Content>
