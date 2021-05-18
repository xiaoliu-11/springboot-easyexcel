<%--
  Created by IntelliJ IDEA.
  User: Sanji
  Date: 2020/5/30
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <center>
        <h1>这里是用户列表信息界面</h1>
        <h2><a href="../userctrl/downloadexcel.do">导出Excel</a></h2>
        <h2>
            <form action="../userctrl/importexcel.do" method="post" enctype="multipart/form-data">
                导入Excel：<input type="file" name="excelFile" accept=".xls,.xlsx">
                <input type="submit" value="提交">
            </form>
        </h2>
        <table border="1" width="95%">
            <tr>
                <th>编号</th>
                <th>姓名(拼音)</th>
                <th>姓名(中文)</th>
                <th>密码</th>
                <th>盐</th>
                <th>email</th>
                <th>mobile</th>
                <%--后面的根据自己需要添加，我这里就不一一添加了--%>
            </tr>
            <c:forEach items="${pi.list}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.name}</td>
                    <td>${u.nickName}</td>
                    <td>${u.password}</td>
                    <td>${u.salt}</td>
                    <td>${u.email}</td>
                    <td>${u.mobile}</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="8" style="text-align: center;">
                    <a href="page.do?pageNum=${pi.navigateFirstPage}">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="page.do?pageNum=${pi.prePage}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="page.do?pageNum=${pi.nextPage}">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="page.do?pageNum=${pi.navigateLastPage}">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    当前${pi.pageNum}/${pi.pages}页,共${pi.total}条
                </td>
            </tr>
        </table>
    </center>
</body>
</html>
