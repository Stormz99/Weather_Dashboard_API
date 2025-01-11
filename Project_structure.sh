#!/bin/bash

# Create the main project directory
mkdir -p Weather_API_Dashboard
cd Weather_API_Dashboard

# Create subdirectories
mkdir -p src
mkdir -p tests
mkdir -p data
mkdir -p images

# Create files
touch src/__init__.py
touch src/weather_dashboard.py
touch .env
touch .gitignore
touch requirements.txt
touch README.md

# Write initial content to README.md
cat <<EOL > README.md
# Weather Dashboard

## Overview
The Weather Dashboard is a Python application that fetches and displays weather data for multiple cities. It uses the OpenWeather API to retrieve current weather information and can save the data to an AWS S3 bucket.

## Features
- Fetches current weather data for specified cities.
- Displays temperature, feels-like temperature, humidity, and weather conditions.
- Saves weather data to an AWS S3 bucket.

## Prerequisites
- Python 3.x installed on your machine.
- An OpenWeather API key. You can get one by signing up at [OpenWeather](https://home.openweathermap.org/users/sign_up).
- AWS CLI installed and configured with an IAM user. You can download the AWS CLI from [here](https://aws.amazon.com/cli/).
- Git installed on your machine. You can download it from [here](https://git-scm.com/).
- Visual Studio Code (VSCode) or any other code editor of your choice. You can download VSCode from [here](https://code.visualstudio.com/).

## Project Structure
- \`src/weather_dashboard.py\`: The main script that contains the \`WeatherDashboard\` class. This script fetches weather data from the OpenWeather API, saves the data to an AWS S3 bucket, and includes a \`plot_forecast\` method that uses Matplotlib to plot the temperature forecast for the next 5 days. The main function fetches and plots the forecast for each city.
- \`requirements.txt\`: A file that lists all the Python packages required to run the project. These packages can be installed using \`pip install -r requirements.txt\`.
- \`.env\`: A file that contains environment variables such as the OpenWeather API key and AWS bucket name. This file is loaded by the \`dotenv\` package to configure the application.
- \`images\`: A directory to store images used in the README.md file or other documentation.

## Setup
1. Clone the repository to your local machine.
   \`\`\`bash
   git clone https://github.com/Stormz99/Weather_API_Dashboard
   \`\`\`

2. Create a virtual environment and activate it:
   \`\`\`bash
   python3 -m venv .venv
   source .venv/bin/activate  # On macOS/Linux
   \`\`\`

3. Install the required packages:
   \`\`\`bash
   pip install -r requirements.txt
   pip install matplotlib
   \`\`\`

   ![environment](/Users/mac/NBA_Challenge/Day1/Weather_API_Dashboard/images/installing%20requirements.txt.png)
   ![environment](/Users/mac/NBA_Challenge/Day1/Weather_API_Dashboard/images/installing_meta.png)

4. Create a \`.env\` file in the root directory and add your OpenWeather API key and AWS bucket name:
   \`\`\`properties
   OPENWEATHER_API_KEY=your_openweather_api_key
   AWS_BUCKET_NAME=your_aws_bucket_name
   \`\`\`

## Usage
1. Run the \`weather_dashboard.py\` script to fetch weather data:
   \`\`\`bash
   python src/weather_dashboard.py
   \`\`\`

   ![installation](/Users/mac/NBA_Challenge/Day1/Weather_API_Dashboard/images/task-completion.png)

## Example
The weather dashboard displays the following information for each city:
- City name
- Temperature (°F)
- Feels like temperature (°F)
- Humidity (%)
- Weather conditions

## Screenshot
![Bucket weather dashboard](/Users/mac/NBA_Challenge/Day1/Weather_API_Dashboard/images/aws-dashboard.png)   
![Philadelphia_forecast](/Users/mac/NBA_Challenge/Day1/Weather_API_Dashboard/images/Philadelphia_forecast.png)
![Seattle_forecast](/Users/mac/NBA_Challenge/Day1/Weather_API_Dashboard/images/Seattle_forecast.png)

## Notes
- API keys will be generated first from [OpenWeather](https://openweathermap.org/api).
- An S3 bucket will be manually created from AWS with a unique name.
- Both the generated API keys and the S3 bucket name will be placed in the \`.env\` file.
EOL

echo "Project structure created successfully."