<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maps.aspx.cs" Inherits="RGRSUBD.Maps1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Карта"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Фамилия"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="ФИО доктора"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Диагноз"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Возраст"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label15" runat="server" Text="Адрес"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label16" runat="server" Text="Профессия"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label17" runat="server" Text="Место работы"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label18" runat="server" Text="Телефон"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label19" runat="server" Text="Характеристика"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label20" runat="server" Text="Номер палаты"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 0px" Text="Добавить" Width="145px" />
            <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="m_Map" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="m_Map" HeaderText="m_Map" ReadOnly="True" SortExpression="m_Map" />
                    <asp:BoundField DataField="m_Surname" HeaderText="m_Surname" SortExpression="m_Surname" />
                    <asp:BoundField DataField="m_Doctor_FIO" HeaderText="m_Doctor_FIO" SortExpression="m_Doctor_FIO" />
                    <asp:BoundField DataField="m_Diagnosis" HeaderText="m_Diagnosis" SortExpression="m_Diagnosis" />
                    <asp:BoundField DataField="m_Age" HeaderText="m_Age" SortExpression="m_Age" />
                    <asp:BoundField DataField="m_Adress" HeaderText="m_Adress" SortExpression="m_Adress" />
                    <asp:BoundField DataField="m_Profession" HeaderText="m_Profession" SortExpression="m_Profession" />
                    <asp:BoundField DataField="m_Place_work" HeaderText="m_Place_work" SortExpression="m_Place_work" />
                    <asp:BoundField DataField="m_Phone_number" HeaderText="m_Phone_number" SortExpression="m_Phone_number" />
                    <asp:BoundField DataField="m_Characteristic" HeaderText="m_Characteristic" SortExpression="m_Characteristic" />
                    <asp:BoundField DataField="m_Ward_number" HeaderText="m_Ward_number" SortExpression="m_Ward_number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnection %>" DeleteCommand="DELETE FROM [Maps] WHERE [m_Map] = @m_Map" InsertCommand="INSERT INTO [Maps] ([m_Map], [m_Surname], [m_Doctor_FIO], [m_Diagnosis], [m_Age], [m_Adress], [m_Profession], [m_Place_work], [m_Phone_number], [m_Characteristic], [m_Ward_number]) VALUES (@m_Map, @m_Surname, @m_Doctor_FIO, @m_Diagnosis, @m_Age, @m_Adress, @m_Profession, @m_Place_work, @m_Phone_number, @m_Characteristic, @m_Ward_number)" SelectCommand="SELECT * FROM [Maps]" UpdateCommand="UPDATE [Maps] SET [m_Surname] = @m_Surname, [m_Doctor_FIO] = @m_Doctor_FIO, [m_Diagnosis] = @m_Diagnosis, [m_Age] = @m_Age, [m_Adress] = @m_Adress, [m_Profession] = @m_Profession, [m_Place_work] = @m_Place_work, [m_Phone_number] = @m_Phone_number, [m_Characteristic] = @m_Characteristic, [m_Ward_number] = @m_Ward_number WHERE [m_Map] = @m_Map">
                <DeleteParameters>
                    <asp:Parameter Name="m_Map" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="m_Map" Type="Int32" />
                    <asp:Parameter Name="m_Surname" Type="String" />
                    <asp:Parameter Name="m_Doctor_FIO" Type="String" />
                    <asp:Parameter Name="m_Diagnosis" Type="String" />
                    <asp:Parameter Name="m_Age" Type="String" />
                    <asp:Parameter Name="m_Adress" Type="String" />
                    <asp:Parameter Name="m_Profession" Type="String" />
                    <asp:Parameter Name="m_Place_work" Type="String" />
                    <asp:Parameter Name="m_Phone_number" Type="String" />
                    <asp:Parameter Name="m_Characteristic" Type="String" />
                    <asp:Parameter Name="m_Ward_number" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="m_Surname" Type="String" />
                    <asp:Parameter Name="m_Doctor_FIO" Type="String" />
                    <asp:Parameter Name="m_Diagnosis" Type="String" />
                    <asp:Parameter Name="m_Age" Type="String" />
                    <asp:Parameter Name="m_Adress" Type="String" />
                    <asp:Parameter Name="m_Profession" Type="String" />
                    <asp:Parameter Name="m_Place_work" Type="String" />
                    <asp:Parameter Name="m_Phone_number" Type="String" />
                    <asp:Parameter Name="m_Characteristic" Type="String" />
                    <asp:Parameter Name="m_Ward_number" Type="Int32" />
                    <asp:Parameter Name="m_Map" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
