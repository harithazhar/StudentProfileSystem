<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .profile-card { border-radius: 25px; box-shadow: 0 15px 35px rgba(0,0,0,0.1); border: none; }
        .info-item { display: flex; align-items: center; padding: 15px 0; border-bottom: 1px solid #eee; }
        .icon-col { width: 40px; color: #1a3c34; }
    </style>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card profile-card col-md-6 mx-auto p-4">
            <div class="text-center mb-4">
                <i class="fas fa-user-circle fa-4x text-muted"></i>
                <h3 class="mt-3">${profileName}</h3>
                <span class="badge bg-success">${profileProgram}</span>
            </div>
            
            <div class="info-item">
                <div class="icon-col"><i class="fas fa-fingerprint"></i></div>
                <div><strong>ID:</strong> ${profileId}</div>
            </div>
            <div class="info-item">
                <div class="icon-col"><i class="fas fa-envelope"></i></div>
                <div><strong>Email:</strong> ${profileEmail}</div>
            </div>
            <div class="info-item">
                <div class="icon-col"><i class="fas fa-heart"></i></div>
                <div><strong>Hobbies:</strong> ${profileHobbies}</div>
            </div>
            <div class="mt-4">
                <strong>Bio:</strong>
                <p class="text-muted mt-2">${profileBio}</p>
            </div>
            <a href="index.html" class="btn btn-outline-dark mt-3 w-100"><i class="fas fa-arrow-left"></i> Back to Registration</a>
        </div>
    </div>
</body>
</html>