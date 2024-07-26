<h1>newfile.jsop</h1>
<jsp:forward page="bg.jsp">


<%!
	int fact(int n){
	int t =1;
	for (int i=1;i<=n;i++){
		t=t*i;
	}
	return t;
	}
	
	%>
<%
int n = Integer.parseInt(request.getParameter("num"));

   %>
   
  Factorial of <%=  n %> is : <%= fact(n)%>