#!/bin/bash

# Créer l'arborescence des répertoires
mkdir -p public/{css,img,js}

# Créer les fichiers
touch index.html
touch public/css/style.css
touch public/js/main.js

# Ajouter du contenu de base aux fichiers
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Web Project</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body>
    <h1>Welcome to My Website</h1>
    <p>This is a simple web project.</p>

    <script src="public/js/main.js"></script>
</body>
</html>' > index.html

echo '/* public/css/style.css */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 20px;
}

h1 {
    color: #333;
}

p {
    color: #666;
}' > public/css/style.css

echo '// public/js/main.js
document.addEventListener("DOMContentLoaded", function() {
    console.log("The page has loaded!");
});' > public/js/main.js

# Confirmation
echo "Structure des fichiers créée avec succès."

#une fois executer il vas faire des sous dossier public et l index.html
