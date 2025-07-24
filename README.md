# Hospital-Readmission-Prediction-Project

## Objective
To develop a predictive model that identifies patients at high risk of extended hospital stays (high Length of Stay - LOS) based on their demographic and clinical attributes. The goal is to enable proactive care, optimize resource allocation, and minimize readmission rates using a fully automated and scalable workflow with Power BI, Python, and SQL integration.

## Problem Statement
Hospital overcrowding and resource strain often stem from unanticipated long patient stays. There is a need to predict patients likely to stay longer than average, using historical data, and present the insights to stakeholders in an interactive dashboard with real-time updates.

## Data Sources
- Health_care_patient_Dataset.csv – Includes patient demographics, medication adherence, appointments, etc.
- Python-generated Predicted_Output.csv – Contains prediction results.
- Stored in SQL Server and connected to Power BI.

## Folder Structure

| Folder        | Purpose                                      |
|---------------|----------------------------------------------|
| `data/`       | Raw and predicted datasets                  |
| `scripts/`    | Python scripts for prediction and DB load   |
| `logs/`       | Execution logs and error reports            |
| `output/`     | Power BI `.pbix` file or exported reports   |


## Workflow Overview (End-to-End Pipeline)

1. **Data Ingestion**:
   - Source: Healthcare patient dataset (CSV).
   - Folder: `data/`

2. **Prediction Script**:
   - Python script (`scripts/prediction_pipeline.py`) runs a Random Forest model to predict high length of stay (LOS).
   - Output saved as `Predicted_Output.csv` in `data/`.

3. **Database Integration**:
   - `db_loader.py` uploads the prediction output to a SQL Server database.

4. **Power BI Visualization**:
   - Power BI `.pbix` report connects to SQL Server to visualize predictions and triggers alerts using Power Automate.

5. **Scheduler**:
   - Task Scheduler (Windows) runs the pipeline weekly.

## Model Info

- **Algorithm**: Random Forest Classifier
- **Target Variable**: Length of Stay (LOS)
- **Features**: Age, Gender, Medication Adherence, Follow-up Appointment



## 🚀 Automation Setup

### Scheduler (Windows Task Scheduler)

- Python executable: `python.exe`
- Script path: `scripts/prediction_pipeline.py`
- Trigger: Daily or upon new file drop in `data/`

## Setup Instructions
### 1. Clone the Repo
git clone https://github.com/your-username/hospital-readmission-prediction.git

## 2. Install requirements:
pip install -r requirements.txt

## 3. Run the prediction pipeline:
python scripts/predict_los.py

## 4. Upload to DB:
python scripts/upload_to_db.py

## 5. Refresh Power BI dashboard to see updates.


## Key Insights from Dashboard

| Insight                 | Description                                                                                      |
| ----------------------- | ------------------------------------------------------------------------------------------------ |
| 🔴 High-Risk Patients   | X% of patients are predicted to have extended LOS. These can be prioritized for follow-up.       |
| 👵 Age Factor           | Patients over 55 have the highest proportion of high LOS predictions.                            |
| 💊 Medication Adherence | Poor adherence is strongly associated with longer hospital stays.                                |
| 🏥 Department Load      | Certain departments show higher readmission and LOS rates (e.g., Cardiology, Internal Medicine). |
| 📅 Appointment Gaps     | Missed or infrequent follow-up appointments correlate with higher LOS.                           |






