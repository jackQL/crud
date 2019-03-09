<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">



    function login() {
        $.ajax({
            url: 'login?id=1&username=jack',
            type: 'post',
            success: function (data) {
                var result = data.result;
                if (result == 'true' || result == true) {
                    alert("登录成功");
                } else {
                    alert("登录失败");
                }
            },
            error: function (data) {
                alert(data);
            }
        })
    }
</script>
<html>
<head>
    <title>登陆页面</title>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="css/element-ui/index.css">
    <!-- 引入组件库 -->
    <script src="js/vue-dev/dist/vue.js"></script>
    <script src="js/element-ui/index.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>

</head>
<body>
    <div class="el-card__body">
        <input id="userid" class="el-input" placeholder="请输入ID"/>
    </div>
    <div class="el-card__body">
        <input id="username" class="el-input" placeholder="请输入用户名"/>
    </div>
    <div class="el-card__body">
        <button id="login" class="el-button" style="width: 100%" onclick="login()">登录</button>
    </div>
</body>

</html>
