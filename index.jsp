<%@ page import="java.util.*, TaskDAO" %>
<html>
<head>
<title>Operations Dashboard</title>
</head>
<body>
<h2>Operations Workflow Monitoring</h2>

<form action="add.jsp" method="post">
    Task Name: <input type="text" name="task_name" /><br/>
    Status: <input type="text" name="status" /><br/>
    Duration: <input type="number" name="duration" /><br/>
    <input type="submit" value="Add Task" />
</form>

<h3>Existing Tasks</h3>
<table border="1">
<tr><th>Name</th><th>Status</th><th>Duration</th></tr>

<%
    List<String[]> tasks = TaskDAO.getTasks();
    for (String[] t : tasks) {
%>
<tr>
    <td><%=t[0]%></td>
    <td><%=t[1]%></td>
    <td><%=t[2]%></td>
</tr>
<%
    }
%>
</table>

</body>
</html>
