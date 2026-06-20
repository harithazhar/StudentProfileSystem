<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.ProfileBean"%>
<% ProfileBean p = (ProfileBean) request.getAttribute("profile"); %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="col-md-6 mx-auto card p-4 shadow-sm">
            <h4 class="mb-4 text-primary"><i class="fas fa-pen-square"></i> Edit Profile Data</h4>
            <form action="ProfileServlet" method="POST">
                <input type="hidden" name="action" value="update">
                <div class="mb-3">
                    <label>Student ID (Locked)</label>
                    <input type="text" name="studentId" class="form-control bg-light" value="<%= p.getStudentID() %>" readonly>
                </div>
                <div class="mb-3">
                    <label>Full Name</label>
                    <input type="text" name="name" class="form-control" value="<%= p.getName() %>" required>
                </div>
                <div class="mb-3">
                    <label>Programme</label>
                    <input type="text" name="program" class="form-control" value="<%= p.getProgramme() %>" required>
                </div>
                <button type="submit" class="btn btn-success w-100"><i class="fas fa-save"></i> Save Changes</button>
            </form>
        </div>
    </div>
</body>
</html>