<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>IslamicApp - Project Overview</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      max-width: 800px;
      margin: 20px auto;
      color: #222;
      line-height: 1.5;
    }
    h1 {
      text-align: center;
      color: #2c3e50;
    }
    .screenshots {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      justify-content: center;
      margin: 20px 0;
    }
    .screenshots img {
      width: 200px;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.15);
    }
    ul {
      list-style: none;
      padding: 0;
    }
    ul li {
      margin-bottom: 10px;
      padding-left: 1.5em;
      position: relative;
      font-size: 1rem;
    }
    ul li::before {
      content: "•";
      position: absolute;
      left: 0;
      color: #2980b9;
      font-weight: bold;
    }
    .tech-stack {
      background: #f0f4f8;
      padding: 15px;
      border-radius: 8px;
      margin: 20px 0;
      font-family: monospace;
    }
    pre {
      background: #f4f4f4;
      padding: 10px;
      border-radius: 5px;
      overflow-x: auto;
      font-family: monospace;
      font-size: 0.95rem;
      margin: 10px 0;
    }
    ol {
      margin-left: 20px;
    }
    ol li {
      margin-bottom: 15px;
      font-size: 1rem;
    }
    code {
      background-color: #eee;
      padding: 2px 6px;
      border-radius: 4px;
      font-family: monospace;
    }
  </style>
</head>
<body>

  <h1>IslamicApp</h1>

  <p>
    IslamicApp is a comprehensive mobile application developed with Flutter, designed to provide essential religious utilities for Muslims worldwide.
    The app offers accurate prayer times based on location, Qibla direction with a compass, daily Azkar, Hijri date display, and supports both Light and Dark modes with a clean and elegant UI.
  </p>

  <h2>Key Features</h2>
  <ul>
    <li>🕋 Accurate Prayer Times calculated based on user's current location.</li>
    <li>🧭 Interactive Qibla Direction compass to help users face the Kaaba.</li>
    <li>📿 Daily Azkar including morning and evening remembrances.</li>
    <li>🗓️ Hijri Date display for Islamic calendar reference.</li>
    <li>🌙 Smooth UI with Dark and Light theme support for comfortable use anytime.</li>
  </ul>

  <h2>Technology Stack</h2>
  <div class="tech-stack">
    Flutter<br/>
    Dart<br/>
    Location Package<br/>
    Adhan Package (for prayer times)<br/>
    Qiblah Package (for direction)<br/>
    Local JSON / APIs (for Azkar)
  </div>

  <h2>Screenshots</h2>
  <div class="screenshots">
    <img src="screenshots/home_screen.png" alt="Home Screen" />
    <img src="screenshots/azkar_screen.png" alt="Azkar Screen" />
    <img src="screenshots/qibla_screen.png" alt="Qibla Screen" />
    <img src="screenshots/settings_screen.png" alt="Settings Screen" />
  </div>

  <h2>App Screens Overview</h2>
  <ul>
    <li><strong>Home Screen:</strong> Displays prayer times, quick access to Qibla and Azkar.</li>
    <li><strong>Azkar Screen:</strong> Scrollable list of morning and evening remembrances.</li>
    <li><strong>Qibla Screen:</strong> Compass pointing towards the Qibla direction.</li>
    <li><strong>Settings:</strong> Language selection and theme mode toggling (dark/light).</li>
  </ul>

  <h2>How to Run</h2>
  <ol>
    <li>Make sure you have <strong>Flutter SDK</strong> installed on your machine.</li>
    <li>Clone the repository:
      <pre><code>git clone https://github.com/username/islamicapp.git</code></pre>
    </li>
    <li>Navigate to the project directory:
      <pre><code>cd islamicapp</code></pre>
    </li>
    <li>Install the required dependencies:
      <pre><code>flutter pub get</code></pre>
    </li>
    <li>Run the app on an emulator or connected device:
      <pre><code>flutter run</code></pre>
    </li>
  </ol>

</body>
</html>

