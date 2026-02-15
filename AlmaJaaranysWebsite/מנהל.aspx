<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="מנהל.aspx.cs" Inherits="מנהל" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1> טבלת משתמשים</h1>
        <form runat="server" method="post">
<strong>סיסמה:</strong>
<input type="text" name="password" id="password" style="border: 1px solid #6eaaa3" />
<br />
<strong>אימייל:</strong>
<input type="text" name="email" id="email" style="border: 1px solid #6eaaa3" />
<br />
        </form>
        <%=st %>
        <br/ />
    </center>
</asp:Content>

