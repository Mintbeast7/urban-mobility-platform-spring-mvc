<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Successful</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Inter", "Helvetica Neue", Arial, sans-serif;
}

/* ===== WELCOMING BACKGROUND IMAGE ===== */
body {
    min-height: 100vh;
    background:
        linear-gradient(
            rgba(0, 0, 0, 0.55),
            rgba(0, 0, 0, 0.8)
        ),
        url("https://images.unsplash.com/photo-1520975922284-7b958f1e0f82?auto=format&fit=crop&w=1920&q=80");

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;

    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
}

/* ===== CARD ===== */
.success-card {
    width: 460px;
    background: rgba(12, 12, 12, 0.96);
    padding: 54px;
    border-radius: 22px;
    text-align: center;
    position: relative;
    box-shadow:
        0 0 40px rgba(0, 229, 255, 0.18),
        0 40px 80px rgba(0, 0, 0, 0.9);
}

/* Neon glow */
.success-card::before {
    content: "";
    position: absolute;
    inset: -1px;
    border-radius: 22px;
    background: linear-gradient(120deg, #7d3cff, #00e5ff);
    filter: blur(20px);
    opacity: 0.38;
    z-index: -1;
}

/* Heading */
.success-card h2 {
    font-size: 34px;
    font-weight: 800;
    margin-bottom: 16px;
}

/* Subtext */
.success-card p {
    font-size: 15px;
    color: #d3d3d3;
    margin-bottom: 22px;
}

/* Confirmation ID */
.confirmation-id {
    font-size: 16px;
    font-weight: 600;
    color: #00e5ff;
    margin-bottom: 38px;
}

/* Button */
.btn {
    display: inline-block;
    background: linear-gradient(135deg, #7d3cff, #00e5ff);
    color: #000;
    padding: 14px 40px;
    font-size: 16px;
    font-weight: 700;
    border-radius: 14px;
    text-decoration: none;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    box-shadow: 0 0 28px rgba(0, 229, 255, 0.45);
}

.btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 0 42px rgba(125, 60, 255, 0.7);
}

/* Footer */
.footer {
    margin-top: 40px;
    font-size: 12px;
    color: #9a9a9a;
}
</style>
</head>

<body>

<div class="success-card">

    <h2>Account created successfully</h2>

    <p>
        You’re all set. Start exploring seamless urban mobility.
    </p>

    <div class="confirmation-id">
        Confirmation ID: ${confirmationId}
    </div>

    <a href="signup" class="btn">Continue</a>

    <div class="footer">
        Built for seamless urban mobility
    </div>

</div>

</body>
</html>
