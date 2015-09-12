<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>
<div>
     <div style="padding-top: 20px">
                        <form action="/topics" id="editor_form" method="post">

                            <table id="forum_main" cellspacing="1">
                                <thead>
                                    <tr>
                                        <td colspan="2">发表主题</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="row1">主题</td>
                                        <td class="row2">
                                            <input class="text required min-length-3 bad-words validation-failed" id="topic_title" maxlength="80" name="title" size="45" style="width:400px;" type="text" title="">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="row1">内容</td>
                                        <td class="row2">
                                            <textarea id="editor_id" name="content" style="width:400px;height:300px;"></textarea>
                                        </td>
                                    </tr>



                                    <tr>
                                        <td colspan="2" align="center" class="row4">
                                            <input class="submit" id="submit_button" type="submit" value="提交">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div
</div>
</body>

</html>
