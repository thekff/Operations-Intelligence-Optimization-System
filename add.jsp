<%@ page import="TaskDAO" %>
<%
    String name = request.getParameter("task_name");
    String status = request.getParameter("status");
    int duration = Integer.parseInt(request.getParameter("duration"));
    TaskDAO.addTask(name, status, duration);
    response.sendRedirect("index.jsp");
%>
