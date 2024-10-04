mkdir -p public/{css,img,js} && echo '<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>My Web Project</title><link rel="stylesheet" href="public/css/style.css"></head><body><h1>Welcome to My Website</h1><p>This is a simple web project.</p><script src="public/js/main.js"></script></body></html>' > index.html && echo 'body { font-family: Arial, sans-serif; background-color: #f0f0f0; margin: 0; padding: 20px; } h1 { color: #333; } p { color: #666; }' > public/css/style.css && echo 'document.addEventListener("DOMContentLoaded", function() { console.log("The page has loaded!"); });' > public/js/main.js
