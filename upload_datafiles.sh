#!/bin/bash

curl https://www.kaggle.com/code/rajputnavya/credit-card-fraud-detection/input?select=fraudTrain.csv | gsutil cp - gs://inputdatafiles/fraudTrain.csv
curl https://www.kaggle.com/code/rajputnavya/credit-card-fraud-detection/input?select=fraudTest.csv | gsutil cp - gs://inputdatafiles/fraudTrain.csv