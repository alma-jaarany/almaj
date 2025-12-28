<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <strong> הרשמה לאתר:</strong>
    <br/>
      <strong>שם פרטי:</strong> <input type="text" name="firstName1" id="firstName" style="border: 1px solid #6eaaa3"/>
   <br/>
      <strong>שם משפחה:</strong> <input type="text" name="firstName2" id="firstName2" style="border: 1px solid #6eaaa3"/>
   <br/>
   <strong>מדוע אני נרשם לאתר: </strong>
   <br/>
   <input type="checkbox" name="check3" checked value="1" id="subject1"/>מתמטיקה<br/>
   <input type="checkbox" name="check3" value="פיזיקה" id="subject2"/>פיזיקה<br/>
   <input type="checkbox" name="check3" value="מדמח" id="subject3"/>מדעי המחשב<br/>
   <input type="checkbox" name="check3" value="ספורט" id="subject4"/>ספורט
   <br/>
   <strong>כמה כלבים אני רוצה לאמץ: </strong>
   <br/>
   <input type="radio" name="radio2" checked value="0" id="animal1"/>0<br/>
   <input type="radio" name="radio2" value="1" id="animal2"/>1<br/>
   <input type="radio" name="radio2" value="2" id="animal3"/>2<br/>
   <input type="radio" name="radio2" value="3" id="animal4"/>3<br/>
   <input type="radio" name="radio2" value="4" id="animal5"/>לא יודע/ת בינתיים<br/>
   <textarea rows="1" cols="20" name="radio1" id="textarea1" placeholder="מספר אחר: " style="border: 1px solid #6eaaa3;"></textarea>
   <strong>חיה אחרת:</strong>
   <textarea rows="1" cols="20" name="radio2" id="textarea2" placeholder="הכנס מלל חופשי" style="border: 1px solid #6eaaa3;"></textarea>
   <br/>
<input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;"/> <br/>
   שם = <%=name %>
   מקצועות = <%=check3 %>
   חיות = <%=radio2 %>
</asp:Content>

