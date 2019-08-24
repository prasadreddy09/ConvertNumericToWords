<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConvertNumericToWords.aspx.cs" Inherits="ConvertNumericToWords" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title> Convert Number to Words in Asp.net</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">

        //Funtion Allow only numbers in text box
        function numeric(evt) {
                var charCode = (evt.which) ? evt.which : event.keyCode
                if (charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
                    return true;
                else {
                    alert('Please Enter Numeric values.');
                    return false;
                }
            }
        $(document).ready(function () {
            $('#btnClick').click(function () {
                if ($('#txtnumber').val() == "") {
                    alert('Please Enter Value in text box');
                    $('#txtnumber').focus();
                    return false;
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="tblwors" runat="server" style="align-content: center;">
                <tbody>
                    <tr>
                        <td colspan="3">
                            <h3>Convert Number to Words</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Value:</td>
                        <td>
                            <asp:TextBox ID="txtnumber" runat="server" MaxLength="9" onkeypress="return numeric(event)" /></td>
                        <td>
                            <asp:Button ID="btnClick" runat="server" Text="Convert" OnClick="btnClick_Click" /></td>
                    </tr>

                    
                </tbody>
            </table><br />
            <table>
                <tr>
                        <td >
                            <label style="color:darkorange" id="lblmsg" runat="server" />
                        </td>
                    </tr>
            </table>
        </div>
    </form>
</body>
</html>
