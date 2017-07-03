<%--
  Created by IntelliJ IDEA.
  User: zhao
  Date: 2017/7/3
  Time: 0:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">SSM CODE</a>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>  <!-- 对外展示的所有代码，点击量排行 -->
                <li><a href="#about">MyCode</a></li> <!-- 我的代码，对外展示的代码 -->
                <li><a href="#contact">MyFriend</a></li> <!-- 我的好友列表及其设置 -->
                <li><a href="#about">MyInfo</a></li> <!-- 我的信息，对外展示的信息 -->
                <li><a href="#about">Seting</a></li> <!-- 我的设置，个人信息设置，对外展示信息设置，对外代码展示设置 -->
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${user!=null}">
                        <li><a href="#about">Logout</a></li> <!-- 注销 -->
                    </c:when>
                    <c:when test="${user==null}">
                        <li><a href="#about">LG</a></li> <!-- 注册登录页面 -->
                    </c:when>
                </c:choose>
            </ul>

            <!-- 代码搜索表单，搜索全局可见代码和个人所有代码,搜索其他人员 -->
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search Code">
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>

        </div><!--/.nav-collapse -->
    </div>
</nav>