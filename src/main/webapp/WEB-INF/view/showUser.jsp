<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/view/common/tagPage.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>显示结果</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <%--    <script type="text/javascript" src="${webRoot}/js/jQuery-core/jquery-1.6.4.min.js?cdntime=${cdntime}"></script>--%>
    <jsp:include page="common/script_and_link.jsp"></jsp:include>
</head>


<body>
<jsp:include page="html_common/header.jsp"></jsp:include>
登录名：${user.sysUserLoginName}

<br>

真实姓名：${user.sysUserRealName}

<a href="${webRoot}/ssmcode/webapp/login_register.jsp" target="_blank">跳转到登录页面</a>

<jsp:include page="html_common/footer.jsp"></jsp:include>
</body>
</html>

