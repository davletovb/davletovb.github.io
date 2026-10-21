---
title: "Building a Serverless Machine Learning Service to Predict Air Quality Index"
description: "A serverless machine learning service that forecasts the Air Quality Index for Canadian cities."
permalink: /journal/air-quality-forecasting/
---
In this project, I built a Machine Learning service that can predict the Air Quality Index (AQI) in a specific Canadian city in the next few days using a 100% serverless stack. Here’s a summary of the steps I took to accomplish this:

1. I created a feature generation script that first fetches raw weather and pollutant data from an external API [https://aqicn.org](https://aqicn.org). Then, I computed features from this raw data (model inputs) and targets (model outputs) and stored them in the cloud.

2. To ensure I had enough historical data (from [https://www.weatherbit.io](https://www.weatherbit.io) API) to train a Machine Learning model, I ran the feature script for a range of past dates.

3. Then fetched historical (features, targets) data, trained and evaluated the best ML model possible for this data (e.g. ARIMA, Exponential Smoothing), and stored the trained model.

4. Set up a GitHub action to automatically run the feature generation script every day, using GitHub’s serverless computing power which is free.

5. Used Streamlit, a Python library, to create a web app that loads the model and features from the Feature Store, computes model predictions, and shows them on a beautiful UI.

In summary, I built a Machine Learning service that predicts the Air Quality Index in a specific city in the next selected days, using a serverless stack. By automating the feature generation and model training script, the model will be updated regularly for better prediction results.

To access the code: [github](https://github.com/davletovb/clearsky)

To see the web app: [dashboard](https://clearsky.streamlit.app/)
