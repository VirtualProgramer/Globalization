<%@ Page Language="C#" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Import Namespace="System.Threading" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        CultureInfo ci = new CultureInfo("zh-TW");
        ci.DateTimeFormat.Calendar = new TaiwanCalendar();
        Thread.CurrentThread.CurrentCulture = ci;

        Label1.Text = DateTime.Now.ToString();

        TaiwanLunisolarCalendar tlc = new TaiwanLunisolarCalendar();
        int m = tlc.GetMonth(DateTime.Now);
        int d = tlc.GetDayOfMonth(DateTime.Now);
        Label2.Text = $"{m}-{d}";


    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
