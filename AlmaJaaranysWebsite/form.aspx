<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
   <input type="text" name="firstName" id="firstName"/>
    שם פרטי:
    <br/>
    מקצועות אהובים:
    <br/>
    <input type="checkbox" name="check2" checked value="מתמטיקה" id="subject1"/>מתמטיקה<br/>
    <input type="checkbox" name="check2" value="פיזיקה" id="subject2"/>פיזיקה<br/>
    <input type="checkbox" name="check2" value="מדמח" id="subject3"/>מדעי המחשב<br/>
    <input type="checkbox" name="check2" value="ספורט" id="subject4"/>ספורט
    <br/>
    בעל חיים אהוב:
    <br/>
    <input type="radio" name="radio1" checked value="כלב" id="animal1"/>כלב<br/>
    <input type="radio" name="radio1" value="חתול" id="animal2"/>חתול<br/>
    <input type="radio" name="radio1" value="דג" id="animal3"/>דג<br/>
    <input type="radio" name="radio1" value="ארנב" id="animal4"/>ארנב<br/>
    חיה אחרת:
    <textarea rows="5" cols="20" name="textarea1" id="textarea1" placeholder="הכנס מלל חופשי"></textarea>
    <br/>
 <input type="submit" name="submit" id="submit"/> <br/>
 name = <%=name %>
</asp:Content>


