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
    <title>Title</title>
</head>
<body>

</body>
<script language="javascript">
    //显示消息
    function showMessage(msg) {
        layer.msg(msg);
    }
    //检查输入内容
    function checkInput(operCode, operPwd) {
        if (0 == operCode.length) {
            showMessage("请输入用户名");
            $("#input_username").focus();
            return false;
        }
        if(0 == operPwd.length){
            showMessage("请输入密码");
            $("#input_password").focus();
            return ;
        }
        return true;
    }

    //请求成功后回调方法
    function onSuccess(data) {
        layer.close(index);
        //在这里对服务器返回的JSON数据进行处理，可通过 “对象名.属性名”获取对应的属性
        showMessage(data.message);
        if (200 == data.state ) {
            $(window).attr('location', '${ctx}/home');
        } else {
            $("#input_username").val("");
            $("#input_password").val("");
            $("#input_username").focus();
        }
    }

    //请求失败后回调方法
    function onError(msg) {
        showMessage(msg);
    }

    var index;
    //执行登录
    function login() {
        var username = $("#input_username").val();
        var password = $("#input_password").val();
        if (checkInput(username, password)) {
            index=layer.load(); //打开登录动画
            setTimeout(function () {
                $.ajax({
                    type: "POST",
                    url: "${ctx}/user/login",   //请求URL地址
                    dataType: "json",           //服务器返回数据类型
                    data: {username: username, password: password}, //请求参数
                    success: onSuccess, //请求成功回调方法
                    error: onError      //请求失败回调方法
                });
            },1000);

        }
    }

    $(function () {
        //监听回车键
        $('.login-box-body').bind('keypress', function (event) {
            var theEvent = event || window.event;
            var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
            if (13 == code) {
                login();
            }
        });
        $("#btn_login").click(function () {
            login();
        });

        //清除输入的内容
        $("#btn_reset").click(function () {
            $("#input_username").val("");
            $("#input_password").val("");
            $("#input_username").focus();
        });
    });
</script>
</html>
