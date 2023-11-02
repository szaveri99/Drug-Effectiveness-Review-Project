# Drug Review Effectiveness Dashboard
This is a Shiny Dashboard for analyzing and visualizing drug reviews and their effectiveness. The dashboard allows users to search for specific drugs, view word clouds of reviews, explore data tables, and see various statistics related to drug effectiveness and sentiment analysis. Here's a breakdown of the dashboard's components: <br />
visit to check the app : https://sakina-zaveri.shinyapps.io/flex_dashboard_project/

## Dataset Information

The dataset used to create this dashboard has been preprocessed, including data cleaning and the application of predictions. The data is ready for analysis and visualization.

Please note that the dataset has undergone the following steps:
- Data cleaning to remove any inconsistencies and missing values.
- Predictions have been applied to enhance the dataset.

The dashboard provided in this repository utilizes this preprocessed dataset to deliver insights and visualizations.

Feel free to explore the dashboard to gain insights from the prepared dataset.

## Dashboard Sections

### Search
In this section, you can search for specific drugs by their name and filter them based on their ratings. The results are displayed as a scatter plot showing the 'usefulCount' of reviews for the selected drug over the years.

### Word Cloud
Here, you can generate a word cloud from the reviews of the selected drug. The word cloud visually represents the most common words in the reviews, providing insights into patients' experiences and sentiments regarding the drug. [Download the Data](https://drive.google.com/file/d/1REarfojhWA2-JWrwfEGKeMTpxZtq2FT4/view?usp=sharing)

### Data
This section displays a data table containing information about the selected drug, including drug name, condition, review, and rating. You can download the data table in various formats.

### Counts
In this value-box section, you can see what percentage of people think the drug is effective based on the selected drug and rating. It's an overview of user opinions about the drug.

### Rating given according to Reviews
This gauge chart shows the user rating for the selected drug. The gauge indicates whether the drug received a high, moderate, or low rating based on user reviews.

### Positive Sentiment
This gauge chart displays the percentage of users who liked the selected drug, as inferred from the reviews. It provides insights into the drug's positive sentiment.

### Negative Sentiment
This gauge chart shows the percentage of users who disliked the selected drug, as inferred from the reviews. It provides insights into the drug's negative sentiment.

### Side Effects
This section displays a list of potential side effects associated with the selected drug. These side effects are extracted from the user reviews, providing valuable information for patients and healthcare professionals.

### GIPHY
A GIPHY image related to health or medication is displayed here, adding a visual element to the dashboard.

## Description

The Description section provides general information about medicines and the importance of following medical advice. It emphasizes that medicines should be taken under the supervision of healthcare professionals.

## Description Document

In this section, you can explore detailed information about the selected drug. The information is retrieved from the drug's Wikipedia page and includes general details, side effects, public reviews, and more.

## Request

This section allows you to submit requests, but it's marked as "Coming Soon."

Please note that this dashboard provides information and insights based on user reviews and public data. It is not a substitute for professional medical advice or guidance.

For more information about the Drug Effectiveness Review Project (DERP), you can visit the [DERP Wikipedia page](https://en.wikipedia.org/wiki/Drug_Effectiveness_Review_Project).

Enjoy exploring and analyzing drug reviews and effectiveness using this interactive Shiny dashboard!
