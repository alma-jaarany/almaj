<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="כניסה.aspx.cs" Inherits="כניסה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <strong>אימייל:</strong>
<input type="text" name="email" id="email" style="border: 1px solid #6eaaa3" />
<br />
    <strong>סיסמה:</strong>
<input type="text" name="password" id="password" style="border: 1px solid #6eaaa3" />
<br />
<input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
<br />
    אימייל= <%=email %>
    סיסמא= <%=password %>
<%=st %>
</asp:Content>

