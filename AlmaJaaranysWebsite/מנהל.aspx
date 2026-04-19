<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="מנהל.aspx.cs" Inherits="מנהל" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div style="background-color: #caece8; height: 100%; direction: rtl; padding-right: 50px; font-size: 20px; color: #6eaaa3; font-family: Assistant;">
        <form runat="server" method="post">


            <h1>טבלת משתמשים</h1>
            <strong>סיסמה:</strong>
            <input type="text" name="password" id="password" style="border: 1px solid #6eaaa3" />
            <br />
            <strong>אימייל:</strong>
            <input type="text" name="email" id="email" style="border: 1px solid #6eaaa3" />
            <br />
            <input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
            <br />
        </form>
        <%=st %>
    </div>
</asp:Content>

