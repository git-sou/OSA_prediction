# Obstructive Sleep Apnea (OSA) prediction

The goal of this project is to use machine learning techniques to enhance the detection of obstructive sleep apnea (OSA).

## Description of the disease

According to HealthLine and medically reviewed by the University of Illinois-Chicago (https://www.healthline.com/health/sleep/obstructive-sleep-apnea), obstructive sleep apnea is a condition in which breathing stops involuntarily for brief periods of time during sleep. During normal sleep, air goes from mouth and nose to lungs. Intervals in which this flow abruptly stops are called apnea. In OSA cases, this occurs at night due to throat narrowing. OSA symptoms include snoring, headaches, discontent, forgetfulness and somnolence.

## Data

The dataset was provided by the teacher. It was an excel file with 28 columns, so 28 categories and 873 rows. The features from the dataset are divided into categorical and numerical:
- Patient: An ID for patient identification.
- Comentarios: Comments related to patients. It is mostly useless information and hence it was removed.
- Audio tumbado: It just records whether there is an audio of the patient or not. It was removed.
- Fotos: Useless information, it was removed.
- Audio: Useless information, it was removed.
- Gender: Gender of the patient. It is really useful as seen in the problem description.
- Fumador: it could be useful at first glance.
- Roncador: it records whether the patient snores during sleep. Useful as seen in the problem description.
- Enfermedades: Disease registry of the patients. Useful as seen in the problem description.
- Sala/Ruido: Information about the room where the patient was filmed. It was removed.
- Imagen: It was removed.
- Dialecto: It records the patient’s Spanish accent, it was removed.
- IAH: It is the target feature. It records the apnoea hypopnoea index (AHI).
- Peso: It is the patient’s weight. It is really useful as seen in the problem description.
- Talla: It is the patient’s height. It may be useful at first glance.
- Edad: It is the patient’s age. It is really useful as seen in the problem description.
- PerCervical: It is the patient’s collar size. It is really useful as seen in the problem description.

The rest of the dataset features: EPWORTH, IAH Supino, IAH Lateral, ... were removed due to their high density of NaNs. All of them had at least 50% of NaNs as we can see: The first cleaning is to keep only categories whose we need for the following project.


