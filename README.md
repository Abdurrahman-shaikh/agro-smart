# Agro-Smart

Agro-Smart is a web application designed to assist farmers with crop recommendations, fertilizer suggestions, and plant disease detection. The application leverages machine learning models to provide accurate predictions based on user inputs and images.

## Features

1. **Crop Recommendation:** Suggests the most suitable crop based on soil nutrients and weather conditions.
2. **Fertilizer Suggestion:** Recommends the appropriate fertilizer based on the crop and soil nutrients.
3. **Disease Detection:** Identifies plant diseases from leaf images using a deep learning model.

## Prerequisites

- Python 3.x
- Flask
- PyTorch
- Pandas
- NumPy
- Requests
- PIL (Pillow)
- torchvision

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/Abdurrahman-shaikh/agro-smart.git
    cd agro-smart
    ```

2. **Create a virtual environment:**
    ```bash
    python -m venv env
    source env/bin/activate 
    ```

3. **Install the required packages:**
    ```bash
    pip install -r requirements.txt
    ```

4. **Set up API keys:**
   - Create a `config.py` file in the root directory and add your OpenWeatherMap API key:
     ```python
     weather_api_key = 'your_api_key_here'
     ```

## Running the Application

```Simply exicute the run.sh file if it doesn't work then do the below steps```

1. **Start the Flask server:**
    ```bash
    python app.py
    ```

2. **Open your web browser and navigate to:**
    ```
    http://127.0.0.1:5000/
    ```

## Usage

### Home Page

- Navigate to the home page where you can access different features of the application.

### Crop Recommendation

1. Go to the Crop Recommendation page.
2. Enter the required soil parameters (Nitrogen, Phosphorous, Potassium, pH, Rainfall).
3. Enter the city name for weather information.
4. Submit the form to get the crop recommendation.

### Fertilizer Suggestion

1. Go to the Fertilizer Suggestion page.
2. Enter the crop name and soil nutrients (Nitrogen, Phosphorous, Potassium).
3. Submit the form to get the fertilizer recommendation.

### Disease Detection

1. Go to the Disease Detection page.
2. Upload an image of the plant leaf.
3. Submit the form to get the disease prediction.

## Models

### Plant Disease Classification

- **Model:** ResNet9
- **Classes:** Apple Scab, Black Rot, Cedar Apple Rust, Healthy (and more for other plants)

### Crop Recommendation

- **Model:** Random Forest Classifier

## Custom Functions

### Weather Fetch

Fetches the temperature and humidity for a given city using the OpenWeatherMap API.

### Predict Image

Transforms an image to a tensor and predicts the disease label using the trained ResNet9 model.

## Contribution

Feel free to submit issues or pull requests to improve the application.


---


