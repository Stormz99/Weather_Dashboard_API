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
- AWS CLI installed and configured with an IAM user, you can download the AWS CLI from [here](https://aws.amazon.com/cli/).

## Project Structure
- `weather_dashboard.py`: The main script that contains the `WeatherDashboard` class. This script fetches weather data from the OpenWeather API, saves the data to an AWS S3 bucket, This script also includes a plot_forecast method that uses Matplotlib to plot the temperature forecast for the next 5 days. The main function has been updated to fetch and plot the forecast for each city. When you run the script, it will display the forecast plots directly.
- [requirements.txt](http://_vscodecontentref_/1): A file that lists all the Python packages required to run the project. These packages can be installed using `pip install -r requirements.txt`.
- [.env](http://_vscodecontentref_/2): A file that contains environment variables such as the OpenWeather API key and AWS bucket name. This file is loaded by the `dotenv` package to configure the application.
- [images](http://_vscodecontentref_/3): A directory to store images used in the [README.md](http://_vscodecontentref_/3) file or other documentation.
   

## Setup
1. Clone the repository to your local machine.
   ```
    git clone https://github.com/Stormz99/Weather_API_Dashboard
   ```

2. . Create a virtual environment and activate it:
    ```bash
    python3 -m venv .venv
    source .venv/bin/activate  # On macOS/Linux
    ```

3. Install the required packages:
   ```
    pip install -r requirements.txt
    pip install matplotlib
   ```

    ![environment](Weather_API_Dashboard/images/installing requirements.txt.png)
   ![environment](Weather_API_Dashboard/images/installing_meta.png)

4. Create a `.env` file in the root directory and add your OpenWeather API key and AWS bucket name:
    ```
    OPENWEATHER_API_KEY=your_openweather_api_key
    AWS_BUCKET_NAME=your_aws_bucket_name
    ```    

 ## Usage
1. Run the `weather_dashboard.py` script to fetch weather data:
    ```
    python src/weather_dashboard.py
    ```
     ![installation](Weather_API_Dashboard/images/task-completion.png)
## Example
The weather dashboard displays the following information for each city:
- City name
- Temperature (°F)
- Feels like temperature (°F)
- Humidity (%)
- Weather conditions

## Screenshot
![Bucket weather dashboard](Weather_API_Dashboard/images/aws-dashboard.png)   
![Philadelphia_forecast](Weather_API_Dashboard/images/Philadelphia_forecast.png)
![Seattle_forecast](Weather_API_Dashboard/images/Seattle_forecast.png)

## Notes
- API keys will be generated first from [OpenWeather](https://openweathermap.org/api).
- An S3 bucket will be manually created from AWS with a unique name.
- Both the generated API keys and the S3 bucket name will be placed in the `.env` file.