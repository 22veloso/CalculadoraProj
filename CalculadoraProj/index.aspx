<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CalculadoraProj.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 316px;
            height: 276px;
        }
    </style>
</head>
<body style="height: 314px">
    <h1>Calculadora Laura!</h1>
    <form id="form1" runat="server">
       
        <p>
            <asp:TextBox ID="TbResultado" runat="server" Height="29px" ReadOnly="True" style="margin-left: 5px" Width="212px" BackColor="#666666" ForeColor="White"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btn7" runat="server" Height="36px" OnClick="btn7_Click" style="margin-left: 37px" Text="7" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
            <asp:Button ID="btn8" runat="server" Height="36px" OnClick="btn8_Click" style="margin-left: 10px" Text="8" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
            <asp:Button ID="btn9" runat="server" Height="36px" OnClick="btn9_Click" style="margin-left: 10px" Text="9" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
            <asp:Button ID="Btndividir" runat="server" Height="36px" OnClick="Btndividir_Click" style="margin-left: 10px" Text="/" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
        </p>
        <asp:Button ID="Btn4" runat="server" Height="36px" OnClick="Btn4_Click" style="margin-left: 37px; margin-top: 0px" Text="4" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
        <asp:Button ID="Btn5" runat="server" Height="36px" OnClick="Btn5_Click" style="margin-left: 10px" Text="5" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
        <asp:Button ID="Btn6" runat="server" Height="36px" OnClick="Btn6_Click" style="margin-left: 10px" Text="6" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
        <asp:Button ID="Btnmulti" runat="server" Height="36px" OnClick="Btnmulti_Click" style="margin-left: 10px" Text="X" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
        <p>
            <asp:Button ID="Btn1" runat="server" Height="36px" OnClick="Btn1_Click" style="margin-left: 37px" Text="1" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
            <asp:Button ID="Btn2" runat="server" Height="36px" OnClick="Btn2_Click" style="margin-left: 10px" Text="2" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
            <asp:Button ID="Btn3" runat="server" Height="36px" OnClick="Btn3_Click" style="margin-left: 10px" Text="3" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
            <asp:Button ID="Btnsub" runat="server" Height="36px" OnClick="Btnsub_Click" style="margin-left: 10px" Text="-" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
        </p>
        <asp:Button ID="Btnvirgula" runat="server" Height="36px" style="margin-left: 37px" Text="," Width="36px" BackColor="#666666" ForeColor="White" OnClick="Btnvirgula_Click" BorderColor="Blue" />
        <asp:Button ID="Btn0" runat="server" Height="36px" OnClick="Btn0_Click" style="margin-left: 10px" Text="0" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
        <asp:Button ID="Btnigual" runat="server" Height="36px" OnClick="Btnigual_Click" style="margin-left: 10px" Text="=" Width="36px" BackColor="#FF66FF" />
        <asp:Button ID="Btnsomar" runat="server" Height="36px" OnClick="Btnsomar_Click" style="margin-left: 10px; margin-top: 0px" Text="+" Width="36px" BackColor="#666666" ForeColor="White" BorderColor="Blue" />
       
    </form>
</body>
</html>
