<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="חיפוש.aspx.cs" Inherits="חיפוש" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1> טבלת כל הכלבים </h1>
<strong>שם כלב:</strong>
<input type="text" name="name" id="name" style="border: 1px solid #6eaaa3" />
<br />
<strong>גיל הכלב:</strong>
<input type="text" name="age" id="age" style="border: 1px solid #6eaaa3" />
<br />

<input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
 <br />       
    
        <%=st %>
        <br/ />
    </center>
</asp:Content>