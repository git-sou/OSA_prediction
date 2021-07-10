# Obstructive Sleep Apnea (OSA) prediction

The goal of this project is to use machine learning techniques to enhance the detection of obstructive sleep apnea (OSA).

## Description of the disease
According to HealthLine and medically reviewed by the University of Illinois-Chicago (https://www.healthline.com/health/sleep/obstructive-sleep-apnea), obstructive sleep apnea is a condition in which breathing stops involuntarily for brief periods of time during sleep. During normal sleep, air goes from mouth and nose to lungs. Intervals in which this flow abruptly stops are called apnea. In OSA cases, this occurs at night due to throat narrowing. OSA symptoms include snoring, headaches, discontent, forgetfulness and somnolence.

## Data
The dataset was provided by the teacher. It was an excel file with 28 columns, so 28 categories and 873 rows. The features from the dataset are as well as categorical and numerical. The first cleaning is to keep only categories whose we need and could be useful for the following project. Finally, I removed features with a high density of NaNs. 

## Feature Engineering
The target feature is the IAH feature. It's a numerical data and it processed to a feature engineering to categorize patients whether they have a severe or mild form. So it allowed me to make a regression but also a classification. I added also 

## Development Environment
The teacher let us the choice between R and Python. As I expected to work on other project in Python, I chose to develop in R on RStudio. So, you can see my different R notebooks. So I learned this new programming language and the several libraries. 

## Results

### Regression result:
<img width="462" alt="image" src="https://user-images.githubusercontent.com/83417933/125166354-991e1c80-e19b-11eb-8f19-a797cc4bbcf7.png">

### Classification result:
<img width="450" alt="image" src="https://user-images.githubusercontent.com/83417933/125166364-a4714800-e19b-11eb-8f41-a9c145b23b63.png">
