<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DEV_ENV Labs</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #2b2b2b;
            color: #f5f5f5;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #28a745;
            padding: 20px 0;
        }

        header h1 {
            margin: 0;
            color: #fff;
        }

        section {
            padding: 20px;
        }

        h2 {
            color: #ffc107;
        }

        .game-area {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        .game-card {
            width: 250px;
            background-color: #343a40;
            border: 2px solid #ffc107;
            border-radius: 10px;
            padding: 15px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .game-card:hover {
            transform: scale(1.05);
            background-color: #ffc107;
            color: #343a40;
        }

        .game-card h3 {
            margin: 0;
            margin-bottom: 10px;
        }

        .game-card p {
            font-size: 14px;
        }

        .game-card img {
            max-width: 100%;
            border-radius: 8px;
        }

        #details {
            margin-top: 30px;
        }

        #details h3 {
            color: #17a2b8;
        }

        #details p {
            color: #d4d4d4;
        }
    </style>
</head>
<body>
    <header>
        <h1>DEV_ENV Labs</h1>
        <p>Master your development environment challenges!</p>
    </header>

    <section>
        <h2>Select Your Challenge</h2>
        <div class="game-area">
            <div class="game-card" onclick="showDetails('Level 1')">
                <img src="https://example.com/level1.jpg" alt="Level 1">
                <h3>Level 1: IDE Setup</h3>
                <p>Configure your development environment with the latest tools.</p>
            </div>
            <div class="game-card" onclick="showDetails('Level 2')">
                <img src="https://example.com/level2.jpg" alt="Level 2">
                <h3>Level 2: Version Control</h3>
                <p>Integrate and manage version control with Git.</p>
            </div>
            <div class="game-card" onclick="showDetails('Level 3')">
                <img src="https://example.com/level3.jpg" alt="Level 3">
                <h3>Level 3: Build Automation</h3>
                <p>Automate builds with popular tools like Maven or Gradle.</p>
            </div>
            <div class="game-card" onclick="showDetails('Level 4')">
                <img src="https://example.com/level4.jpg" alt="Level 4">
                <h3>Level 4: Debug & Optimize</h3>
                <p>Debug and optimize your application for better performance.</p>
            </div>
        </div>
    </section>

    <section id="details"></section>

    <script>
        function showDetails(level) {
            const details = {
                'Level 1': {
                    title: 'Level 1: IDE Setup',
                    description: 'Set up your IDE with plugins, themes, and configurations for maximum productivity.',
                },
                'Level 2': {
                    title: 'Level 2: Version Control',
                    description: 'Learn to initialize, clone, and manage repositories using Git effectively.',
                },
                'Level 3': {
                    title: 'Level 3: Build Automation',
                    description: 'Create scripts to automate builds using Maven, Gradle, or other tools.',
                },
                'Level 4': {
                    title: 'Level 4: Debug & Optimize',
                    description: 'Identify bottlenecks in your application and resolve them for optimal performance.',
                },
            };

            const selected = details[level];
            document.getElementById('details').innerHTML = `
                <h3>${selected.title}</h3>
                <p>${selected.description}</p>
            `;
        }
    </script>
</body>
</html>
