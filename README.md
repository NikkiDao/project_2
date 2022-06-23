# Project_2 : Extract, Transform, and Load 
## Topic: Fast Food Health Concerns in US Big Cities
team 3: Nikki Dao, Anthony Garcia, Luis Hernandez, Julie Kuo, Rebecca Watson

### Extract:

For this project, we used two different sets of data which when used together can help determine if specific health concerns might be related to the amount of fast food restaurants there are in given cities. The original data sources we used were both from the Kaggle website, yet contained more information than was needed and also were not ideal to merge right away. Because of this, we needed to clean the data and upload it to a database where it can be filtered through properly. 

### Transform:

The first dataset we used contains health data in big cities across the United States. The column labeled “place” contained both the city, state, and in some cases, the county. In order to eventually merge this dataset with another, this column needed to be split. Using a denominator we were able to get the city and state to become their own columns, but still found that some cities were connected to their respective counties. After looking at the value counts in the city column, we were able to locate which cities would need to be fixed, and used a replace function to resolve this issue. After this, we created a new table with only the columns we would need to merge later on and found we also had some rows that we would not need for this analysis. By using a filter, we limited the rows included in our data to specific “indicators”. This was then grouped by the city for simpler analysis. 

The second dataset contains fast food restaurant locations across the United States. From this set of data, we wanted to see how many fast food restaurants are in each of the cities from our first dataset. To do this, we first dropped the columns which were unnecessary. In order to get the number of restaurants per city, we did a groupby count of each city which resulted in a table ready for a join and further analysis. 


### Load:

By utilizing Postgres, we created two tables to insert our data into. Using SQLAlchemy to connect with Postgres, we loaded the data. A join query was then used to combine the data to get the final results. In our final database we were able to combine major cities within the United States along with the respected health concerns that provided a numerical measurement and the amount of fast food chains located in each city. 

From the completed dataset we would be able to evaluate if there is a correlation between fast food restaurants and health concerns based on mortality rate, diabetes, obesity and heart disease. Our topic was chosen because we simply wanted to see if a city with a high volume of fast food chains meant that the population within that city had a higher risk of health concerns given the fact that these restaurants are easily accessible. Alongside, we wanted to see if the opposite occurred in a sense that a lower amount of fast food restaurants meant lower volumes of health concerns. 


### Data Sources: Kaggle

Health Data in Big Cities:
https://www.kaggle.com/datasets/noordeen/big-city-health-data?select=Big_Cities_Health_Data_Inventory.csv 

Fast Food Restaurants:
https://www.kaggle.com/datasets/datafiniti/fast-food-restaurants?select=FastFoodRestaurants.csv

