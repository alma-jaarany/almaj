<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="תרומת-כלב.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="javascript">
        function checkAll() {
            nameErr.innerHTML = "";
            breadErr.innerHTML = "";

            f = true;

            f = checkName() && f;
            f = checkBread() && f;

            return f;
        }

        function checkName() {
            name = document.getElementById("name").value;
            if (name.length < 2 || name.length > 10) {
                nameErr.innerHTML = "אורך שם הכלב לא תקין";
                return false;
            }
            return true
        }

        function checkBread() {
            bread = document.getElementById("bread").value;
            if (bread.length > 15 || bread.length < 2) {
                breadErr.innerHTML = "אורך שם סוג הכלב לא תקין";
                return false;
            }
            return true
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <h1>הבאת כלב לאימוץ:</h1>
    <br />
    <form runat="server" method="post" onsubmit="return checkAll();">
    <strong>שם הכלב:</strong>
    <input type="text" name="name" id="name" style="border: 1px solid #6eaaa3" />
    <br />
        <span id="nameErr" style="color:red"></span>
        <br />
        <strong>גיל הכלב: </strong>
<br />
<input type="radio" name="age" checked value="0-1" id="animal1" />0-1<br />
<input type="radio" name="age" value="2-5" id="animal2" />2-5<br />
<input type="radio" name="age" value="5-8" id="animal3" />5-8<br />
<input type="radio" name="age" value="8-12" id="animal4" />8-12<br />
<input type="radio" name="age" value="diff" id="animal" />אחר<br />
    <br />
        <strong>סוג הכלב:</strong>
<textarea name="bread" id="bread" style="border: 1px solid #6eaaa3"></textarea>
<br />
        <span id="breadErr" style="color:red"></span>
        <br />
 <input type="submit" name="submit1" value="שלח" id="submit" style="font-family: Assistant; color: #6eaaa3; border: 1px solid #6eaaa3;" />
<br />
        
        </form>
        <%=strResult %>
</asp:Content>



