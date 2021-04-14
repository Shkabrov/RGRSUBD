<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wards.aspx.cs" Inherits="RGRSUBD.Department1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Номер палаты"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Количество кроватей"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="ФИО доктора"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Персонал"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" Width="147px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="w_Ward_number" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="w_Ward_number" HeaderText="w_Ward_number" ReadOnly="True" SortExpression="w_Ward_number" />
                    <asp:BoundField DataField="w_Number_beds" HeaderText="w_Number_beds" SortExpression="w_Number_beds" />
                    <asp:BoundField DataField="w_Doctor_FIO" HeaderText="w_Doctor_FIO" SortExpression="w_Doctor_FIO" />
                    <asp:BoundField DataField="w_Staff" HeaderText="w_Staff" SortExpression="w_Staff" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnection %>" DeleteCommand="DELETE FROM [Wards] WHERE [w_Ward_number] = @w_Ward_number" InsertCommand="INSERT INTO [Wards] ([w_Ward_number], [w_Number_beds], [w_Doctor_FIO], [w_Staff]) VALUES (@w_Ward_number, @w_Number_beds, @w_Doctor_FIO, @w_Staff)" SelectCommand="SELECT * FROM [Wards]" UpdateCommand="UPDATE [Wards] SET [w_Number_beds] = @w_Number_beds, [w_Doctor_FIO] = @w_Doctor_FIO, [w_Staff] = @w_Staff WHERE [w_Ward_number] = @w_Ward_number">
                <DeleteParameters>
                    <asp:Parameter Name="w_Ward_number" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="w_Ward_number" Type="Int32" />
                    <asp:Parameter Name="w_Number_beds" Type="Int32" />
                    <asp:Parameter Name="w_Doctor_FIO" Type="String" />
                    <asp:Parameter Name="w_Staff" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="w_Number_beds" Type="Int32" />
                    <asp:Parameter Name="w_Doctor_FIO" Type="String" />
                    <asp:Parameter Name="w_Staff" Type="String" />
                    <asp:Parameter Name="w_Ward_number" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
