# Hospital-Length-Of-Stay-Prediction-Model

## Objective
To develop a predictive model that identifies patients at high risk of extended hospital stays (high Length of Stay - LOS) based on their demographic and clinical attributes. The goal is to enable proactive care, optimize resource allocation, and minimize readmission rates using a fully automated and scalable workflow with Power BI, Python, and SQL integration.

## Problem Statement
Hospital overcrowding and resource strain often stem from unanticipated long patient stays. There is a need to predict patients likely to stay longer than average, using historical data, and present the insights to stakeholders in an interactive dashboard with real-time updates.

## Data Sources
- Health_care_patient_Dataset.csv – Includes patient demographics, medication adherence, appointments, etc.
- Python-generated Predicted_Output.csv – Contains prediction results.
- Stored in SQL Server and connected to Power BI.

## Dataset Used
- <a href = "https://github.com/PaulTenu/Hospital-Readmission-Prediction-Project/blob/main/Health_care_patient_Dataset.csv">Data set</a>

## Analysis Questions
- Patients trend
- Treatment effectiveness
- Department performance
## Dashboard File
- <a href = "https://github.com/PaulTenu/Hospital-Readmission-Prediction-Project/blob/main/PREDICTIVE%20MODEL%20FOR%20HEALTH%20CARE%20PROJECT.pbix">Power BI file</a>
## Python File
- <a href = "https://github.com/PaulTenu/Hospital-Readmission-Prediction-Project/blob/main/run_prediction_model.ipynb">Python predictive model run script</a>
## SQL File
- <a href = "https://github.com/PaulTenu/Hospital-Readmission-Prediction-Project/blob/main/SQLQuery1_Healthcare_Db.sql">SQL Db Query</a>


## Folder Structure

| Folder        | Purpose                                     |
|---------------|---------------------------------------------|
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

## Technologies Used
- Power BI
- Python (pandas, sklearn, sqlalchemy)
- SQL Server
- Windows Task Scheduler

## Prediction Dashboard Report Summmary
The predictive model identified 4,597 patients (46% of the total population) at high risk for extended hospital stays. This substantial proportion underscores the critical importance of proactive intervention strategies. Analysis reveals that underlying medical conditions and medication non-adherence are primary drivers of prolonged hospitalizations.
## Key Findings
1. ### Gender Distribution: Male patients demonstrate a disproportionately higher likelihood of extended stays compared to female patients. While the high versus low length of stay (LOS) distribution appears relatively balanced within each gender group, the absolute volume of males predicted for high LOS significantly exceeds that of females, suggesting gender-specific risk factors warrant further investigation.
2. **Primary Diagnosis Impact**: Among the analyzed conditions—injuries, respiratory disorders, cardiac problems, diabetes, and infections—clear patterns emerge:
   - Highest Risk Conditions: Infections and diabetes show the greatest propensity for extended stays, with these diagnoses consistently associated with high LOS predictions
   - Moderate Risk: Respiratory and cardiac conditions demonstrate intermediate risk profiles
   - Lowest Risk: Injury-related admissions exhibit a comparatively higher proportion of low LOS predictions, likely reflecting more straightforward treatment pathways
3. **Age-Related Trends**: Patient age demonstrates a strong correlation with predicted hospital stay duration:
   - Ages 56+: Over 25% predicted for high LOS, reflecting age-related complications and slower recovery trajectories
   - Ages 36-55: Notable but reduced percentage of high LOS predictions compared to older cohorts
   - Ages 18-35: Lowest percentage of high LOS predictions, consistent with enhanced recovery capacity in younger populations
4. **Medication Adherence Critical Factor**: The analysis reveals medication adherence as a paramount predictor of hospital stay duration. Patients with poor medication compliance demonstrate significantly elevated rates of high LOS predictions compared to adherent patients. This finding highlights medication management as a key intervention point for reducing hospital resource utilization.

## Dashboards
- ### General Dahsbord
<img width="1249" height="727" alt="Screenshot (197)" src="https://github.com/user-attachments/assets/8499194b-0892-40c0-9fa0-dc623bb4f2d4" />

- ### Predictive Dashboard
  <img width="1236" height="713" alt="Screenshot (198)" src="https://github.com/user-attachments/assets/9abaf324-0e18-40b9-b543-639bb2fb764b" />

## Strategic Implications
These findings suggest targeted interventions focusing on:
- Enhanced medication adherence programs
- Age-specific care protocols for patients 56+
- Specialized management pathways for infection and diabetes cases
- Gender-specific risk assessment protocols
The 46% high-risk population represents both a significant challenge and opportunity for healthcare resource optimization through predictive intervention strategies.
