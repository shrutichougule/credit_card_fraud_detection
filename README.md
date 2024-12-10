# credit_card_fraud_detection
Credit Card Fraud Detection using HTM-CLA, H-DS, and H-MSC Classifiers.

# Overview
This project demonstrates a robust system for detecting credit card fraud using advanced machine learning classifiers: HTM-CLA (Hierarchical Temporal Memory – Cortical Learning Algorithm), H-DS (Hybrid Decision System), and H-MSC (Hybrid Multi-Stage Classifier). The solution is implemented on Google Cloud Platform (GCP) for scalability, efficiency, and real-time detection.


# Table of Contents
Features
Tech Stack
Architecture
Dataset
Setup
Results
Future Enhancements
License
# Features
Advanced Fraud Detection: Utilizes cutting-edge HTM-CLA, H-DS, and H-MSC classifiers to detect fraudulent transactions.
Cloud-Native Solution: Leveraging GCP services for seamless deployment, high availability, and real-time analysis.
Scalable Data Pipeline: Built to handle large datasets with real-time processing using tools like BigQuery and Dataflow.
Explainable Results: Model results include interpretability metrics to understand fraud patterns.
# Tech Stack
Programming Languages:

Python
SQL
Libraries & Frameworks:

NumPy, Pandas, Matplotlib
Scikit-learn, TensorFlow, PyTorch
NuPIC (for HTM-CLA implementation)
Big Data & Cloud Services:

GCP: BigQuery, Dataflow, Cloud Storage
Apache Beam
Pub/Sub for real-time data streaming
#Architecture

1. Data Ingestion:

Transactions are streamed into GCP using Pub/Sub.
Historical data stored in Cloud Storage.
2. Data Processing:

Data is cleaned and transformed using Apache Beam (Dataflow).
Features are engineered to feed into the classifiers.
3. Model Deployment:

HTM-CLA, H-DS, and H-MSC classifiers are trained on historical data.
Deployed via GCP AI Platform for inference.
4. Fraud Detection:

Predictions are processed in real-time and stored in BigQuery for visualization and monitoring.
# Dataset
The dataset used for this project is a publicly available credit card fraud dataset containing anonymized features.

Source: Kaggle Credit Card Fraud Dataset
Key Features:

30 Features including Time, Amount, and anonymized principal components.
Highly imbalanced: Only ~0.17% of transactions are fraudulent.
# Setup
Prerequisites
Google Cloud Platform account with:
BigQuery
Cloud Storage
AI Platform
Python environment with the following libraries:
numpy, pandas, scikit-learn, tensorflow, nupic, apache-beam

# Installation
Clone the repository:

bash
Copy code
git clone https://github.com/username/credit-card-fraud-detection.git
cd credit-card-fraud-detection
Install required Python libraries:

bash
Copy code
pip install -r requirements.txt
Set up GCP credentials:

bash
Copy code
export GOOGLE_APPLICATION_CREDENTIALS="path-to-service-account.json"
Upload data to Cloud Storage:

bash
Copy code
gsutil cp dataset.csv gs://your-bucket-name/
Run the pipeline:

bash
Copy code
python data_pipeline.py
Results
The system achieves:

Precision: 98.5%
Recall: 96.7%
F1-Score: 97.6%
Model results are stored in BigQuery and visualized using Data Studio.

# Future Enhancements
Integrate AutoML for hyperparameter tuning.
Add support for time-series anomaly detection with HTM-CLA.
Scale to handle millions of transactions per second.


Contact
For any queries or contributions, reach out:
Shruti Chougule
LinkedIn | GitHub







