<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Explore the Uber Platform</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Inter", "Helvetica Neue", Arial, sans-serif;
}

/* ===== BODY WITH CAR BACKGROUND ===== */
body {
    min-height: 100vh;
    background:
        linear-gradient(
            rgba(0, 0, 0, 0.65),
            rgba(0, 0, 0, 0.85)
        ),
        url("https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1920&q=80");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;

    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
}

/* ===== FORM CARD ===== */
.form-card {
    width: 420px;
    background: rgba(12, 12, 12, 0.92);
    padding: 42px;
    border-radius: 18px;
    position: relative;
    box-shadow:
        0 0 40px rgba(125, 60, 255, 0.15),
        0 40px 80px rgba(0, 0, 0, 0.9);
}

/* Neon glow border */
.form-card::before {
    content: "";
    position: absolute;
    inset: -1px;
    border-radius: 18px;
    background: linear-gradient(120deg, #7d3cff, #00e5ff);
    filter: blur(16px);
    opacity: 0.45;
    z-index: -1;
}

/* Heading */
.form-card h2 {
    font-size: 28px;
    font-weight: 700;
    margin-bottom: 10px;
}

.form-card p {
    font-size: 14px;
    color: #bfbfbf;
    margin-bottom: 30px;
}

/* Inputs */
.input-group {
    margin-bottom: 18px;
}

.input-group input {
    width: 100%;
    background: #0a0a0a;
    border: 1px solid #222;
    padding: 14px 16px;
    border-radius: 10px;
    color: #fff;
    font-size: 14px;
    outline: none;
    transition: border 0.2s ease, box-shadow 0.2s ease;
}

.input-group input::placeholder {
    color: #777;
}

.input-group input:focus {
    border-color: #7d3cff;
    box-shadow: 0 0 0 2px rgba(125, 60, 255, 0.25);
}

/* Checkbox */
.terms {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 13px;
    color: #ccc;
    margin: 20px 0;
}

.terms input {
    accent-color: #00e5ff;
}

/* Button */
.btn-submit {
    width: 100%;
    background: linear-gradient(135deg, #7d3cff, #00e5ff);
    color: #000;
    border: none;
    padding: 14px;
    font-size: 16px;
    font-weight: 700;
    border-radius: 12px;
    cursor: pointer;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    box-shadow: 0 0 24px rgba(0, 229, 255, 0.35);
}

.btn-submit:hover {
    transform: translateY(-2px);
    box-shadow: 0 0 36px rgba(125, 60, 255, 0.6);
}

/* Footer */
.form-footer {
    text-align: center;
    font-size: 12px;
    color: #8f8f8f;
    margin-top: 22px;
}
</style>
</head>

<body>

<div class="form-card">
    <h2>Create your account</h2>
    <p>Sign up to start moving with confidence</p>

    <form action="signUpformload" method="post">

        <div class="input-group">
            <input type="text" name="name" placeholder="Full Name" required>
        </div>

        <div class="input-group">
            <input type="email" name="email" placeholder="Email" required>
        </div>

        <div class="input-group">
            <input type="text" name="mobile" placeholder="Mobile Number" required>
        </div>

        <div class="input-group">
            <input type="password" name="password" placeholder="Password" required>
        </div>

        <div class="input-group">
            <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
        </div>

        <div class="terms">
            <input type="checkbox" name="agreeTerms" required>
            <span>I agree to the Terms & Privacy Policy</span>
        </div>

        <button type="submit" class="btn-submit">Sign Up</button>
    </form>

    <div class="form-footer">
        Built for seamless urban mobility
    </div>
</div>

</body>
</html>
