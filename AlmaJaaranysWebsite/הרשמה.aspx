<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    הרשמה
      <strong>שם פרטי:</strong> <input type="text" name="firstName1" id="firstName" style="border: 1px solid #6eaaa3"/>
   <br/>
   <strong>מקצועות אהובים:</strong>
   <br/>
   <input type="checkbox" name="check3" checked value="מתמטיקה" id="subject1"/>מתמטיקה<br/>
   <input type="checkbox" name="check3" value="פיזיקה" id="subject2"/>פיזיקה<br/>
   <input type="checkbox" name="check3" value="מדמח" id="subject3"/>מדעי המחשב<br/>
   <input type="checkbox" name="check3" value="ספורט" id="subject4"/>ספורט
   <br/>
   <strong>בעל חיים אהוב:</strong>
   <br/>
   <input type="radio" name="radio2" checked value="כלב" id="animal1"/>כלב<br/>
   <input type="radio" name="radio2" value="חתול" id="animal2"/>חתול<br/>
   <input type="radio" name="radio2" value="דג" id="animal3"/>נמר<br/>
   <input type="radio" name="radio2" value="ארנב" id="animal4"/>ארנב<br/>
   <strong>חיה אחרת:</strong>
   <textarea rows="1" cols="20" name="radio2" id="textarea1" placeholder="הכנס מלל חופשי" style="border: 1px solid #6eaaa3;"></textarea>
   <br/>
<input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;"/> <br/>
   שם = <%=name %>
   מקצועות = <%=check3 %>
   חיות = <%=radio2 %>
</asp:Content>

