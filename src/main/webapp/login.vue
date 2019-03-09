<%--
  Created by IntelliJ IDEA.
  User: idc
  Date: 2019/3/2
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="WEB-INF/css/element-ui/index.css">
    <!-- 引入组件库 -->
    <script src="WEB-INF/js/vue-dev/dist/vue.js"></script>
    <script src="WEB-INF/js/element-ui/index.js"></script>
    <script src="WEB-INF/js/jquery-3.3.1.min.js"></script>
    <style type="text/css">
        .el-row {
            margin-bottom: 20px;

        &
        :last-child {
            margin-bottom: 0;
        }

        }
        .login-box {
            margin-top: 20%;
            margin-left: 40%;
        }
    </style>
</head>
<body>
<div class="login-box" id="app">
    <el-row>
        <el-col :span="8">
            <el-input id="name" v-model="name" placeholder="请输入帐号">
                <template slot="prepend">帐号</template>
            </el-input>
        </el-col>
    </el-row>
    <el-row>
        <el-col :span="8">
            <el-input id="password" v-model="password" type="password" placeholder="请输入密码">
                <template slot="prepend">密码</template>
            </el-input>
        </el-col>
    </el-row>
    <el-row>
        <el-col :span="8">
            <el-button id="login" v-on:click="check" style="width:100%" type="primary">登录</el-button>
        </el-col>
    </el-row>
</div>
</body>
<script type="text/javascript">
    new Vue({
        el: '#app',
        data: {
            name: '',
            password: ''
        },
        methods: {
            check: function (event) {
                //获取值
                var name = this.name;
                var password = this.password;
                if (name == '' || password == '') {
                    this.$message({
                        message: '账号或密码为空！',
                        type: 'error'
                    })
                    return;
                }
                $.ajax({
                    url: 'login',
                    type: 'post',
                    data: {
                        name: name,
                        password: password
                    },
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
                    },
                    dataType: 'json',
                })
            }
        }
    })

</script>
</html>
