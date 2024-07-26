<%
String co =  request.getParameter("color");


if(co  == null || co.trim().equals("")){
	co = "white";
}
%>
<body bgcolor=<%=co %>>
BackgroundColor= <%= co %>


</body>
