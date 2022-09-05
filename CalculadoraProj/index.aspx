<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CalculadoraProj.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 292px;
            height: 391px;
        }
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 36px;
            margin-bottom: 10px;
        }
        .auto-style3 {
            margin-left: 6px;
            margin-bottom: 11px;
        }
        .auto-style4 {
            margin-bottom: 11px;
        }
        .auto-style5 {
            margin-left: 36px;
            margin-bottom: 11px;
        }
        .auto-style6 {
            margin-bottom: 10px;
        }
        .auto-style7 {
            margin-left: 0px;
            margin-bottom: 11px;
        }
    </style>
</head>
<body style="height: 436px">
    <form id="form1" runat="server">
        <asp:Label ID="lblDados" runat="server"></asp:Label>
&nbsp;<br />
        <asp:TextBox ID="TbResultado" runat="server" Height="33px" Width="195px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btn_Limpar0" runat="server" BackColor="#FFCC00" CssClass="auto-style7" Height="36px" OnClick="Btn_Limpar_Click" Text="C" Width="88px" />
        <br />
        <asp:Button ID="btn24" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style5" ForeColor="White" Height="36px" OnClick="btn7_Click" Text="7" Width="36px" />
        <asp:Button ID="btn25" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style10" ForeColor="White" Height="36px" OnClick="btn8_Click" style="margin-left: 10px; margin-bottom: 11px" Text="8" Width="36px" />
        <asp:Button ID="btn26" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style4" ForeColor="White" Height="36px" OnClick="btn9_Click" style="margin-left: 10px" Text="9" Width="36px" />
        <asp:Button ID="Btndividir1" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style4" ForeColor="White" Height="36px" OnClick="Btndividir_Click" style="margin-left: 10px" Text="/" Width="36px" />
        <br />
        <asp:Button ID="Btn23" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style4" ForeColor="White" Height="37px" OnClick="Btn4_Click" style="margin-left: 36px; margin-top: 0px;" Text="4" Width="36px" />
        <asp:Button ID="Btn21" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style11" ForeColor="White" Height="36px" OnClick="Btn5_Click" style="margin-left: 10px; margin-bottom: 12px" Text="5" Width="36px" />
        <asp:Button ID="Btn22" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style4" ForeColor="White" Height="36px" OnClick="Btn6_Click" style="margin-left: 10px" Text="6" Width="36px" />
        <asp:Button ID="Btnmulti1" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style4" ForeColor="White" Height="36px" OnClick="Btnmulti_Click" style="margin-left: 10px" Text="X" Width="36px" />
&nbsp;<br />
        <asp:Button ID="Btn11" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style2" ForeColor="White" Height="36px" OnClick="Btn1_Click" Text="1" Width="36px" />
&nbsp;<asp:Button ID="Btn12" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style3" ForeColor="White" Height="36px" OnClick="Btn2_Click" Text="2" Width="36px" />
        <asp:Button ID="Btn13" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style6" ForeColor="White" Height="36px" OnClick="Btn3_Click" style="margin-left: 10px" Text="3" Width="36px" />
        <asp:Button ID="Btnsub0" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style6" ForeColor="White" Height="36px" OnClick="Btnsub_Click" style="margin-left: 10px" Text="-" Width="36px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btnvirgula0" runat="server" BackColor="#666666" BorderColor="Blue" CssClass="auto-style1" ForeColor="White" Height="36px" OnClick="Btnvirgula_Click" Text="," Width="36px" />
        <asp:Button ID="Btn20" runat="server" BackColor="#666666" BorderColor="Blue" ForeColor="White" Height="36px" OnClick="Btn0_Click" style="margin-left: 10px" Text="0" Width="36px" />
        <asp:Button ID="Btnigual1" runat="server" BackColor="#FF66FF" Height="36px" OnClick="Btnigual_Click" style="margin-left: 10px" Text="=" Width="36px" />
        <asp:Button ID="Btnsomar1" runat="server" BackColor="#666666" BorderColor="Blue" ForeColor="White" Height="36px" OnClick="Btnsomar_Click" style="margin-left: 10px; margin-top: 0px" Text="+" Width="36px" />
        <asp:HiddenField ID="Operacao" runat="server" />
        <asp:HiddenField ID="numAnterior" runat="server" />
    </form>
</body>
</html>
