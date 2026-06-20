<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.ProfileBean"%>
<% ProfileBean profile = (ProfileBean) request.getAttribute("savedProfile"); %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Complete</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="alert alert-success p-4 text-center rounded-4 shadow-sm">
            <i class="fas fa-check-circle fa-3x mb-3"></i>
            <h4>Profile Successfully Stored!</h4>
        </div>
        
        <% if (profile != null) { %>
        <div class="card border-0 shadow-sm rounded-4 col-md-8 mx-auto">
            <div class="card-body p-4">
                <h5 class="mb-4"><i class="fas fa-info-circle"></i> Summary</h5>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item d-flex justify-content-between">
                        <span>ID:</span> <strong><%= profile.getStudentID() %></strong>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Name:</span> <strong><%= profile.getName() %></strong>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Program:</span> <strong><%= profile.getProgramme() %></strong>
                    </li>
                </ul>
                <div class="mt-4 d-flex gap-2">
                    <a href="index.html" class="btn btn-primary flex-fill">Add Another</a>
                    <a href="ProfileServlet?action=view" class="btn btn-outline-primary flex-fill">View All</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</body>
</html>