<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="RGRSUBD.Doctors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<asp:Label ID="Label1" runat="server" Text="ФИО"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Специализация"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Зарплата"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" Width="145px" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="d_Doctor_FIO" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="d_Doctor_FIO" HeaderText="d_Doctor_FIO" ReadOnly="True" SortExpression="d_Doctor_FIO" />
                    <asp:BoundField DataField="d_Specialization" HeaderText="d_Specialization" SortExpression="d_Specialization" />
                    <asp:BoundField DataField="d_Salary" HeaderText="d_Salary" SortExpression="d_Salary" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnection %>" DeleteCommand="DELETE FROM [Doctors] WHERE [d_Doctor_FIO] = @d_Doctor_FIO" InsertCommand="INSERT INTO [Doctors] ([d_Doctor_FIO], [d_Specialization], [d_Salary]) VALUES (@d_Doctor_FIO, @d_Specialization, @d_Salary)" SelectCommand="SELECT * FROM [Doctors]" UpdateCommand="UPDATE [Doctors] SET [d_Specialization] = @d_Specialization, [d_Salary] = @d_Salary WHERE [d_Doctor_FIO] = @d_Doctor_FIO">
                <DeleteParameters>
                    <asp:Parameter Name="d_Doctor_FIO" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="d_Doctor_FIO" Type="String" />
                    <asp:Parameter Name="d_Specialization" Type="String" />
                    <asp:Parameter Name="d_Salary" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="d_Specialization" Type="String" />
                    <asp:Parameter Name="d_Salary" Type="String" />
                    <asp:Parameter Name="d_Doctor_FIO" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
