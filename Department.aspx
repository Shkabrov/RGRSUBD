<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="RGRSUBD.Department2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Отделение"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Номер палаты"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" Width="150px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="dap_Department" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="dap_Department" HeaderText="dap_Department" ReadOnly="True" SortExpression="dap_Department" />
                    <asp:BoundField DataField="dap_Ward_number" HeaderText="dap_Ward_number" SortExpression="dap_Ward_number" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnection %>" DeleteCommand="DELETE FROM [Department] WHERE [dap_Department] = @dap_Department" InsertCommand="INSERT INTO [Department] ([dap_Department], [dap_Ward_number]) VALUES (@dap_Department, @dap_Ward_number)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [dap_Ward_number] = @dap_Ward_number WHERE [dap_Department] = @dap_Department">
                <DeleteParameters>
                    <asp:Parameter Name="dap_Department" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="dap_Department" Type="String" />
                    <asp:Parameter Name="dap_Ward_number" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dap_Ward_number" Type="Int32" />
                    <asp:Parameter Name="dap_Department" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
