<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Class Form</title>
</head>
<body>
<h1>${class == null ? "Create New Class" : "Edit Class"}</h1>
<form action="class" method="post">
    <input type="hidden" name="action" value="${class == null ? "create" : "edit"}">
    <c:if test="${class != null}">
        <input type="hidden" name="id" value="${class.id}">
    </c:if>
    <label for="name">Name:</label>
    <input type="text" name="name" id="name" value="${class != null ? class.name : ""}">
    <button type="submit">${class == null ? "Create" : "Update"}</button>
</form>
</body>
</html>
