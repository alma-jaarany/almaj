<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="javascript">
        function checkAll() {
            phonErr.innerHTML = "";
            emailErr.innerHTML = "";
            passErr.innerHTML = "";
            f = true;

            f = checkPhoneName() && f;
            f = checkEmailName() && f;
            f = checkPassName() && f;

            return f;
        }

        function checkPhoneName() {
            phone = document.getElementById("number").value;
            if (phone.length != 7) {
                phonErr.innerHTML = "אורך מספר הטלפון לא תקין";
                return false;
            }
            return true
        }

        function checkEmailName() {
            email = document.getElementById("email").value;
            if (email.length < 2 || email.length > 30) {
                emailErr.innerHTML = "כתובת האימייל לא תקינה";
                return false;
            }
            return true


            function checkPassName() {
                pass = document.getElementById("password").value;
                if (user.length < 2 || user.length > 30) {
                    passErr.innerHTML = "הסיסמה לא תקינה";
                    return false;
                }
                return true
            }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>הרשמה לאתר:</h1>
    <br />
    <form runat="server" method="post" onsubmit="return checkAll();">
        <table border="0" dir="rtl" style="margin:auto; text-align:center;">
            <tr>
                <td>
                    <strong>סיסמה:</strong>
                    <input type="text" name="password" id="password" style="border: 1px solid #6eaaa3" />
                </td>
            </tr>
            <tr>
                <td>
                    <strong>אימייל:</strong>
                    <input type="text" name="email" id="email" style="border: 1px solid #6eaaa3" />
                </td>
            </tr>
            <tr>
                <td>
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
                </td>
            </tr>
            <tr>
                <td>
                    <strong>מדוע אני נרשם לאתר: </strong>
                    <br />
                    <input type="checkbox" name="check3" checked value="אימוץ" id="subject1" />אני רוצה לאמץ כלב<br />
                    <input type="checkbox" name="check3" value="אימוץ עתידי" id="subject2" />מתכננת בעתיד לאמץ כלב<br />
                    <input type="checkbox" name="check3" value="להביא" id="subject3" />אני רוצה להביא כלב<br />
                    <input type="checkbox" name="check3" value="הורים" id="subject4" />אני מנסה לשכנע את ההורים<br />
                    <input type="checkbox" name="check3" value="אחר" id="subject5" />אחר<br />
                </td>
            </tr>
            <tr>
                <td>
                    <strong>כמה כלבים אני רוצה לאמץ: </strong>
                    <br />
                    <input type="radio" name="radio2" checked value="0" id="animal1" />0<br />
                    <input type="radio" name="radio2" value="1" id="animal2" />1<br />
                    <input type="radio" name="radio2" value="2" id="animal3" />2<br />
                    <input type="radio" name="radio2" value="3" id="animal4" />3<br />
                    <input type="radio" name="radio2" value="idk" id="animal5" />לא יודע/ת בינתיים<br />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
                </td>
            </tr>
        </table>
    </form>
    <%=strResult %>
</asp:Content>

