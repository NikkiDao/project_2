# project_2 : Extract, Transform, and Load 
# Project Topic: Fast Food Health Concerns in US Big Cities

## Extract:

For this project, we used two different sets of data which when used together can help determine if specific health concerns might be related to the amount of fast food restaurants there are in given cities. The original data sources we used were both from the Kaggle website, yet contained more information than was needed and also were not ideal to merge right away. Because of this, we needed to clean the data and upload it to a database where it can be filtered through properly. 

## Transform:

The first dataset we used contains health data in big cities across the United States. The column labeled “place” contained both the city, state, and in some cases, the county. In order to eventually merge this dataset with another, this column needed to be split. Using a denominator we were able to get the city and state to become their own columns but still found that some cities were connected to their respective counties. After looking at the value counts in the city column, we were able to locate which cities would need to be fixed, and used a replace function to resolve this issue. After this, we created a new table with only the columns we would need to merge later on and found we had some rows also that we would not need for this analysis. By using a filter, we limited the rows included in our data to specific “indicators”. This was then grouped by the city for simpler analysis. 
The second dataset contains fast food restaurant locations across the United States. From this set of data, we wanted to see how many fast food restaurants are in each of the cities from our first dataset. To do this, we first dropped the columns which were unnecessary. In order to get the number of restaurants per city, we did a groupby count of each city which resulted in a table ready for a join and further analysis. 

## Load:


## Data Sources: Kaggle

Health Data in Big Cities:
https://www.kaggle.com/datasets/noordeen/big-city-health-data?select=Big_Cities_Health_Data_Inventory.csv 

Fast Food Restaurants:
https://www.kaggle.com/datasets/datafiniti/fast-food-restaurants?select=FastFoodRestaurants.csv

# The Take Home

