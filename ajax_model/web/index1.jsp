<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 2019/8/29
  Time: 1:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery_ajax</title>
    <link rel="stylesheet" href="bootstrap4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mystyle.css">
    <script src="jquery/jquery_3.4.1.js" type="text/javascript"></script
    <script type="text/javascript" src="jquery/jquery_3.4.1.js"></script>
    <script type="text/javascript" src="bootstrap4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/myfile.js"></script>
    <script type="text/javascript">
        function regist() {
           var $mobile=$("#mobile").val();
            $.ajax({
                url:"myServlet",
                请求方式:"post",
                data:"mobile="+$mobile,
                success:function (result,testStatus) {
                    if (result == "true") {
                        alert("已存在，注册失败！");
                    }else{
                        alert("注册成功！");
                    }
                }
            });
        }
        function registpost() {
            var $mobile=$("#mobile").val();
            $.post(
                "myServlet",
                "mobile="+$mobile,
                function (result) {
                    if (result == "true") {
                        alert("已存在，注册失败！");
                    } else {
                        alert("注册成功！");
                    }
                },
                    "text"
            );
        }
        function registget() {
            $mobile=$("#mobile").val();
            $.post(
                "myServlet",
                "mobile="+$mobile,
                function (result) {
                    if (result == "true") {
                        alert("已存在，注册失败！");
                    } else {
                        alert("注册成功！");
                    }
                }
            );
        }
        function check(){
            $("#tip").load(
                "my1Servlet",
                "mobile="+$("#mobile").val()
            );
        }
        $(function () {
            $("#mobile").keyup(function () {
                    check();
            });
        });
    </script>
</head>
<body>
<div id="container">
    <div class="form-group">
        <label class="sr-only" for="mobile">手机：</label>
        <input type="text" class="form-control" id="mobile" placeholder="phone number">
        <span id="tip"></span><br>
        <!--<button class="btn btn-success" style="width: 100%;margin-top: 2px;" id="btn">注册</button>-->
    </div>
</div>

</body>
</html>
