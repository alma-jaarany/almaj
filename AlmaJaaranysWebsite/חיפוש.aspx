<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="חיפוש.aspx.cs" Inherits="חיפוש" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center>

<form id="form1" runat="server">
        <h1> טבלת כל הכלבים </h1>

<strong>שם כלב:</strong>
<input type="text" name="name" id="name" style="border: 1px solid #6eaaa3" />
<br />
        <strong>גיל הכלב: </strong>
<br />
<input type="radio" name="age" value="0-1" id="animal1" />0-1<br />
<input type="radio" name="age" value="2-5" id="animal2" />2-5<br />
<input type="radio" name="age" value="5-8" id="animal3" />5-8<br />
<input type="radio" name="age" value="8-12" id="animal4" />8-12<br />
<input type="radio" name="age" value="diff" id="animal" />אחר<br />
    <br />
    <strong>סוג כלב:</strong>
<input type="text" name="bread" id="bread" style="border: 1px solid #6eaaa3" />
<br />
        
<input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
 <br />  
        <%=st %>    
        <br/>
         
    </form>

</center>
</asp:Content>