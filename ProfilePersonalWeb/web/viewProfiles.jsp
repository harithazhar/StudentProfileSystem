<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, model.ProfileBean"%>
<%
    List<ProfileBean> listProfiles = (List<ProfileBean>) request.getAttribute("listProfiles");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Records | View</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3><i class="fas fa-list-ul"></i> Database Records</h3>
            <a href="menu.html" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back to Menu</a>
        </div>

        <div class="card p-4 shadow-sm border-0">
            <table class="table table-hover align-middle">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Program</th>
                        <th>Email</th> <!-- Kolum Email ditambah -->
                        <th>Hobbies</th> <!-- Kolum Hobbies ditambah -->
                        <th>Introduction</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% if(listProfiles != null) { for(ProfileBean p : listProfiles) { %>
                    <tr>
                        <td><%= p.getStudentID() %></td>
                        <td><%= p.getName() %></td>
                        <td><span class="badge bg-info"><%= p.getProgramme() %></span></td>
                        <td><%= (p.getEmail() != null) ? p.getEmail() : "-" %></td> <!-- Paparan Email -->
                        <td><%= (p.getHobbies() != null) ? p.getHobbies() : "-" %></td> <!-- Paparan Hobbies -->
                        <td><%= (p.getIntroduction() != null) ? p.getIntroduction() : "-" %></td>
                        <td>
                            <a href="ProfileServlet?action=editForm&studentId=<%= p.getStudentID() %>" class="text-primary me-3"><i class="fas fa-edit"></i></a>
                            <a href="ProfileServlet?action=delete&studentId=<%= p.getStudentID() %>" class="text-danger"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    <% }} %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
<style>
    body {
        min-height: 100vh;
        padding: 40px 15px;
        /* Animated gradient background sama seperti menu */
        background: linear-gradient(135deg, #091c14, #163828, #205c42, #2d6a4f);
        background-size: 400% 400%;
        animation: gradientAnimation 10s ease infinite;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    @keyframes gradientAnimation {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    .glass-card {
        background: rgba(255, 255, 255, 0.98);
        backdrop-filter: blur(20px);
        border-radius: 24px;
        box-shadow: 0 25px 50px rgba(0, 0, 0, 0.4);
        max-width: 1200px;
        margin: 0 auto;
    }
</style>