<%--
  Created by IntelliJ IDEA.
  User: idc
  Date: 2019/3/7
  Time: 7:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr>
            <td>编号</td>
            <td>名称</td>
            <td>职业</td>
            <td>电话</td>
        </tr>
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.jobs}</td>
            <td>${user.phone}</td>
        </tr>
    </table>

</body>
</html>
