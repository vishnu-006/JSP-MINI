<%@page import = "JavaBean.InsertCustomer" %>
<jsp:useBean id="customer" class = "JavaBean.Customer" scope = "session"/>
<jsp:setProperty property="*" name="customer"/>
<%
	boolean flag = InsertCustomer.saveCustomer(customer);
if (flag){
	out.println("<h3> Customer added succefully</h3>");
}
%>
<a href = "Customer.html">Add New Customer </a>
<a href ="DisplayCustomer.jsp">Display Customer Details</a>