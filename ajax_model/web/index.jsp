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
    <title>Title</title>
    <script type="text/javascript">
        function regist() {
            var mobile=document.getElementById("mobile").value;
            xmlHttpRequest=new XMLHttpRequest();
            xmlHttpRequest.onreadystatechange=callBack;
            xmlHttpRequest.open("post","myServlet",true);
            xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            xmlHttpRequest.send("mobile="+mobile);
        }
        function registget() {
            var mobile=document.getElementById("mobile").value;
            xmlHttpRequest=new XMLHttpRequest();
            xmlHttpRequest.onreadystatechange=callBack;
            xmlHttpRequest.open("get","myServlet?mobile="+mobile,true);
            //xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            xmlHttpRequest.send(null);
        }
        function callBack() {
            if(xmlHttpRequest.readyState==4&&xmlHttpRequest.status==200){
                var data=xmlHttpRequest.responseText;
                if(data=="true"){
                    alert("该号码已存在，请更换");
                }else{
                    alert("注册成功");
                }
            }
        }
    </script>
</head>
<body>
手机：<input type="text" id="mobile">
<button onclick="registget()">注册</button>
</body>
</html>
