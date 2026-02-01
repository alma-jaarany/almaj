<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <strong>הרשמה לאתר:</strong>
    <br />
    <form runat="server" method="post">
    <strong>סיסמה:</strong>
    <input type="text" name="password" id="password" style="border: 1px solid #6eaaa3" />
    <br />
    <strong>אימייל:</strong>
    <input type="text" name="email" id="email" style="border: 1px solid #6eaaa3" />
    <br />
    <selections>
        <strong>מספר טלפון:</strong>
        <input type="text" name="phone1" id="number" style="border: 1px solid #6eaaa3" />
        <select name="phone2" id="age" style="border: 1px solid #6eaaa3;">
            <option value="0">050</option>
            <option value="2">052</option>
            <option value="3">053</option>
            <option value="4">054</option>
            <option value="5">055</option>
            <option value="8">058</option>
            <option value="9">059</option>

        </select>
        <br />
        <strong>מדוע אני נרשם לאתר: </strong>
        <br />
        <input type="checkbox" name="check3" checked value="אימוץ" id="subject1" />אני רוצה לאמץ כלב<br />
        <input type="checkbox" name="check3" value="אימוץ עתידי" id="subject2" />מתכננת בעתיד לאמץ כלב<br />
        <input type="checkbox" name="check3" value="להביא" id="subject3" />אני רוצה להביא כלב<br />
        <input type="checkbox" name="check3" value="הורים" id="subject4" />אני מנסה לשכנע את ההורים<br />
        <input type="checkbox" name="check3" value="אחר" id="subject5" />אחר<br />
        <strong>כמה כלבים אני רוצה לאמץ: </strong>
        <br />
        <input type="radio" name="radio2" checked value="0" id="animal1" />0<br />
        <input type="radio" name="radio2" value="1" id="animal2" />1<br />
        <input type="radio" name="radio2" value="2" id="animal3" />2<br />
        <input type="radio" name="radio2" value="3" id="animal4" />3<br />
        <input type="radio" name="radio2" value="idk" id="animal5" />לא יודע/ת בינתיים<br />
        <input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
        <br />
        </form>
        <%=strResult %>
</asp:Content>

