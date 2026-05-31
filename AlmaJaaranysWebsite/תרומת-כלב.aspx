<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="תרומת-כלב.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>הבאת כלב לאימוץ:</h1>
    <br />
    <form runat="server" method="post">
    <strong>שם הכלב:</strong>
    <input type="text" name="name" id="name" style="border: 1px solid #6eaaa3" />
    <br />
        <strong>גיל הכלב: </strong>
<br />
<input type="radio" name="age" value="1" id="animal1" />0-1<br />
<input type="radio" name="age" value="2" id="animal2" />2-5<br />
<input type="radio" name="age" value="3" id="animal3" />5-8<br />
<input type="radio" name="age" value="1" id="animal4" />8-12<br />
<input type="radio" name="age" value="idk" id="animal" />אחר<br />
    <strong>סוג הכלב:</strong>
    <input type="text" name="bread" id="bread" style="border: 1px solid #6eaaa3" />
    <br />
        <input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
<br />
        
        </form>
        <%=strResult %>
</asp:Content>



