<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Uber | Neon Ride Experience</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Inter", "Helvetica Neue", Arial, sans-serif;
}

body {
    height: 100vh;
    background: radial-gradient(circle at top, #141414, #000);
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
}

/* Neon Card */
.card {
    width: 540px;
    padding: 0;
    border-radius: 20px;
    background: rgba(10, 10, 10, 0.9);
    position: relative;
    box-shadow:
        0 0 40px rgba(125, 60, 255, 0.15),
        0 40px 80px rgba(0, 0, 0, 0.9);
    overflow: hidden;
}

/* Neon Border Glow */
.card::before {
    content: "";
    position: absolute;
    inset: -1px;
    border-radius: 20px;
    background: linear-gradient(120deg, #7d3cff, #00e5ff);
    z-index: -1;
    filter: blur(18px);
    opacity: 0.55;
}

/* ===== HERO IMAGE ===== */
.hero {
    height: 220px;
    background:
        linear-gradient(rgba(0,0,0,0.35), rgba(0,0,0,0.75)),
        url("https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1200&q=80");
    background-size: cover;
    background-position: center;
}

/* Content */
.content {
    padding: 52px;
}

/* Headline */
h1 {
    font-size: 44px;
    font-weight: 800;
    line-height: 1.1;
    margin-bottom: 22px;
}

/* Subtitle */
.subtitle {
    font-size: 17px;
    color: #d1d1d1;
    margin-bottom: 42px;
}

/* Buttons */
.actions {
    display: flex;
    gap: 18px;
}

/* Primary Neon Button */
.btn-primary {
    background: linear-gradient(135deg, #7d3cff, #00e5ff);
    color: #000;
    padding: 14px 32px;
    font-size: 16px;
    font-weight: 700;
    border-radius: 12px;
    text-decoration: none;
    transition: all 0.25s ease;
    box-shadow: 0 0 24px rgba(0, 229, 255, 0.35);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 0 36px rgba(125, 60, 255, 0.6);
}

/* Secondary Button */
.btn-secondary {
    position: relative;
    color: #fff;
    padding: 14px 24px;
    font-size: 16px;
    font-weight: 500;
    text-decoration: none;
}

/* Neon underline hover */
.btn-secondary::after {
    content: "";
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 0;
    height: 2px;
    background: linear-gradient(90deg, #7d3cff, #00e5ff);
    transition: width 0.3s ease;
}

.btn-secondary:hover::after {
    width: 100%;
}

/* Footer */
.footer {
    margin-top: 52px;
    font-size: 13px;
    color: #8f8f8f;
}
</style>
</head>

<body>

<div class="card">
    <!-- HERO IMAGE -->
    <div class="hero"></div>

    <div class="content">
        <h1>Request a ride<br>for now or later</h1>
        <p class="subtitle">
            A smarter way to move. Safe, reliable rides powered by technology.
        </p>

        <div class="actions">
            <a href="user/signup" class="btn-primary">Sign up</a>
            <a href="#" class="btn-secondary">Explore features</a>
        </div>

        <div class="footer">
            Engineered for modern city travel
        </div>
    </div>
</div>

</body>
</html>
