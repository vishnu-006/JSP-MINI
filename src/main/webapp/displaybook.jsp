<jsp:useBean id="book" class="JavaBean.Book" scope="session"/>
<table border>

<tr>
<th> BookID</th>
<td><jsp:getProperty property="bid" name="book"/></td>

</tr>

<tr>
<th> Bookname</th>
<td><jsp:getProperty property="bname" name="book"/></td>

</tr>


<tr>
<th> Bookprice</th>
<td><jsp:getProperty property="bprice" name="book"/></td>

</tr>



</table>