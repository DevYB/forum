<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>
<div>
<div>
    <a href="/topics/new">发表文章</a>
</div>
 <table id="forum_main" cellspacing="1">
                <thead>
                    <tr>
                        <td colspan="2" style="border-left: 1px solid white;">主题</td>
                        <td style="width: 50px;">回复</td>
                        <td style="width: 100px;">作者</td>
                        <td style="width: 50px;">阅读</td>
                        <td style="width: 120px; border-right: 1px solid white;">最新文章</td>
                    </tr>
                </thead>

                <tbody>
                <c:forEach var="topic" items="${topics}">
                    <tr>
                      <td class="topic_icon announcement_topic"></td>
                      <td class="topic_title">
                        <a href="/topics/${topic.id}" style="color: red">${topic.title}</a>
                    </td>
                    <td class="topic_replies">0</td>
                    <td class="topic_author"><a href="#" target="_blank" title="">Author</a></td>
                    <td class="topic_view_count">0</td>
                    <td class="topic_last_post">
                        2015-05-21<br>
                        <a href="#" target="_blank" title="billykinggym">billykinggym</a>
                        <a href="#" class="last_post" title="浏览最新的文章">&nbsp;</a>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
                </table>

</div>
</body>

</html>
