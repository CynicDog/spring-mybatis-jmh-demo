<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
<head>
    <title>Application</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<c:set var="menu" value="employee"/>
<%@ include file="../common/navbar.jsp" %>
<div class="container">
    <div class="row my-3">
        <div class="col-12">
            <div class="card shadow">
                <div class="card-header">Registration in batch</div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Identifier</th>
                            <th>File Title</th>
                            <th>File Name</th>
                            <th>Added</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="file" items="${files}">
                            <tr class="align-middle">
                                <td>${file.id}</td>
                                <td>${file.title}</td>
                                <td>${file.name}</td>
                                <td>${file.added eq 'N' ? 'not yet' : 'done'}</td>
                                <td>
                                    <a href="batch-register?id=${file.id}" class="btn btn-primary btn-sm mx-1 ${file.added eq 'N' ? '' : 'disabled'}">add in batch</a>
                                    <a href="download?id=${file.id}" class="btn btn-outline-primary btn-sm mx-1">download</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="row my-2">
        <div class="col-12">
            <div class="card shadow">
                <div class="card-header">Add in batch</div>
                <div class="card-body">
                    <form class="form" method="post" action="batch-upload" enctype="multipart/form-data">
                        <div class="row my-2">
                            <label class="col-sm-1 col-form-label text-end">File Title</label>
                            <div class="col-9 my-2">
                                <input type="text" class="form-control" name="title">
                            </div>
                        </div>
                        <div class="row my-2">
                            <label class="col-sm-1 col-form-label text-end my-1">File</label>
                            <div class="col-9 my-1">
                                <input type="file" accept=".xls, .xlsx" class="form-control" name="multipartFile"/>
                            </div>
                            <div class="col-2 text-center my-1">
                                <button class="btn btn-primary">submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
