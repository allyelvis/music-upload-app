#!/bin/bash

# Set project name
project_name="music-upload-app"

# Create project directory
mkdir $project_name
cd $project_name

# Initialize npm project
npm init -y

# Install dependencies
npm install react react-dom react-redux redux express mongoose spotify-web-api-node youtube-search ffmpeg-static @google-cloud/storage

# Create directory structure
mkdir src public scripts

# Generate necessary files
touch README.md .gitignore .env src/App.js public/index.html scripts/build.js

# Add content to .gitignore file
echo "node_modules/" >> .gitignore
echo "dist/" >> .gitignore
echo "build/" >> .gitignore

# Add content to .env file
echo "SPOTIFY_CLIENT_ID=your_spotify_client_id" >> .env
echo "SPOTIFY_CLIENT_SECRET=your_spotify_client_secret" >> .env
# Add other environment variables as needed

# Add content to build.js file
# (Replace with your actual build script)
echo 'const webpack = require("webpack");
const config = require("./webpack.config.js");

webpack(config, (err, stats) => {
  if (err) {
    console.error(err);
  } else {
    console.log(stats.toString());
  }
});' > scripts/build.js

# Commit initial changes to Git
git init
git add .
git commit -m "Initial commit"