<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<div id="login_wrap">
    <h2>Login</h2>
    <form action="/user/login" method="post" id="login_frm">
        <div class="frm_wrap">
            <p class="top_hold">id</p>
            <label><input type="text" name="uid"></label>
            <p class="top_hold">password</p>
            <label><input type="password" name="upw"></label>
            <div class="login_submit_wrap">
                <span id="login_submit" class="login_submit pointer">log in</span>
                <a href="/user/join"><span>create account</span></a>
            </div>
            <div class="login_find_wrap">
                <a href=""><span>find id</span></a>
                <a href=""><span>find password</span></a>
            </div>
        </div>
    </form>
</div>