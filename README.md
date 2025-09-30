# 🚀 Phishing Website Detection using Machine Learning

## 📌 Project Overview
This project is an **end-to-end Machine Learning pipeline** that detects phishing websites based on URL and website features.  
It covers the **entire ML lifecycle** — from data ingestion, validation, transformation, and training, to deployment on AWS with CI/CD.  

The pipeline is designed to be **scalable, modular, and production-ready**, following industry practices for ML engineering.

---

## 🔄 Workflow

1. **ETL Pipeline**
   - Extract Kaggle dataset.
   - Transform → JSON.
   - Load into **MongoDB Atlas**.
   - Artifacts synced to **AWS S3**.

2. **Data Ingestion**
   - Read raw dataset from **MongoDB**.
   - Split into train & test sets.

3. **Data Validation**
   - Check for missing/extra columns.
   - Perform **KS 2-sample test** to validate distribution similarity.
   - Save validated data to `data_validated/`.

4. **Data Transformation**
   - Apply **KNNImputer** for missing values.
   - Scale & encode features.
   - Save transformed train/test datasets.

5. **Model Training**
   - Train multiple models (Random Forest, Decision Tree, Logistic Regression, AdaBoost, Gradient Boosting).
   - Perform hyperparameter tuning with **GridSearchCV**.
   - Log experiments & register best model in **MLflow (DagsHub)**.
   - Save model as `model.pkl`.

6. **Deployment**
   - FastAPI app serves prediction endpoint.
   - Containerized using **Docker**.
   - Pushed to **AWS ECR**.
   - Deployed on **AWS EC2**.
   - CI/CD via **GitHub Actions**:
     - Run tests
     - Build Docker image
     - Push image to ECR
     - Deploy container on EC2

---


## 🛠️ Tech Stack
- **Languages & Libraries:** Python, Scikit-learn, FastAPI, Pandas, NumPy  
- **ML Workflow:** MLflow, GridSearchCV, KNNImputer  
- **Databases & Storage:** MongoDB Atlas, AWS S3  
- **Cloud & Deployment:** AWS EC2, AWS ECR, Docker, GitHub Actions (CI/CD)  
- **Experiment Tracking:** DagsHub (MLflow integration)
- - **CI/CD**: GitHub Actions 

---

## 🚀 Results
- Automated end-to-end ML pipeline with artifact management. 
- Best model selected via GridSearchCV and logged in MLflow.
- Deployment pipeline reduces manual intervention via CI/CD.
- **Deployed on AWS (EC2 + ECR + CI/CD). Demo link available on request**
 
---
