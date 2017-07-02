<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    response.setHeader("cache-control", "max-age=5,public,must-revalidate"); //one day
    response.setDateHeader("expires", -1);
    String cdntime = String.valueOf(System.currentTimeMillis());
    request.setAttribute("cdntime",cdntime);
%>
<%--<c:set value="${pageContext.request.contextPath}" var="webRoot" />--%>
<%
    String webRoot = "http://" + request.getServerName() + ":" + request.getServerPort();
    request.setAttribute("webRoot",webRoot);
    /* webRoot=localhost:8080 */
    /* 统一使用webRoot */
%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("path",path);
    request.setAttribute("basePath",basePath);
    /* basePath=localhost:8080/ */
    /* path=localhost:8080  */
%>