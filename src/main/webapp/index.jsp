<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 开发环境版本，包含了有帮助的命令行警告 -->
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<body>
<h2>Hello World!</h2>
<div id="app">
    {{message}}
</div>
<div id="app-2">
    <span v-bind:title="message">
        鼠标悬停几秒钟查看此处动态绑定的提示信息！
    </span>
</div>
</body>
</html>
<script>
    var app = new Vue({
        el:'#app',
        data:{
            message:'Hello Vue!'
        }
    })
    var app2 = new Vue({
        el:'#app-2',
        data:{
            message:'页面加载于' + new Date().toLocaleString()
        }
    })
</script>
