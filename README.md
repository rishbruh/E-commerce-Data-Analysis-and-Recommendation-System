# E-COMMERCE BIG DATA ANALYSIS AND RECOMMENDATION SYSTEM

To perform extensive analysis on an E-Commerce store’s dataset and derive meaningful insights about customer behaviour and to create a rudimentary recommendation system using the Apriori algorithm for the recommendation of products for the user. This project was done as part of the CDAC Big Data Analytics diploma course.

DATASET USED -

E-Commerce customer behavior data from multi category store (Source - https://www.kaggle.com/mkechinov/ecommerce-behavior-data-from-multi-category-store)

PROJECT FLOW -

![ecommerce](https://user-images.githubusercontent.com/62597096/175781287-5f0473fb-20fa-42e5-8d90-fe58046ef064.png)

1. Data extracted from Kaggle and put on S3 bucket.

2. In a PySpark session, the data is read and "NA" values are dropped from the dataset

3. Two main pre-processing steps performed - a) "Category_Code" column split into "Category" and "Sub_Category".
                                                                                    b) "event_time" column used to obtain "date" and "day" columns.

4. Now the requisite schemas are generated using Spark.SQL. 

5. Seven schemas generated overall -
c_date,  v_date,  purch_date,  userid_date,  customer_count_purchase,  purchase_c_s_b, p_v_c_day  

6. All the schemas are further converted into ORC format and stored temporarily on the Hive Metastore. 

7. A MySQL RDS instance is created consisting of skeleton structure of the mentioned schemas.

8. Using SQOOP export commands, the schemas stored in Hive are exported to the said MySQL RDS.

9. PowerBI desktop further accesses the created schemas from the MySQL RDS and visualizations are performed on the same. 

10. The aforementioned steps are automated by generating a CFT(Cloud Formation Template) stack.

11.  The CFT creates an AWS EMR and runs two major steps within it - a) Spark Step (generates schemas for storage in hive)
                                                                                                                          b) Test step (runs SQOOP commands)
12. Further for the recommendation system,CSV file format of dataset converted into parquet format and stored on s3 ( size reduction from 8gb to 2.7gb)

13. Spark tuning is performed by maximizing executor driver memory.

14. Libraries of pyspark-pandas and mlxtend is installed in the pyspark session

15. The data is read into a dataframe and "NA" values are dropped from the dataset

16. "Category_Code" column split into "Category" and "Sub_Category".

17. "Sub_category" data is grouped by user_id and date, and stored in a list format

18. One hot encoding performed using TransactionEncoder from mlxtend library. 

19. The Apriori algorithm and association rule mining are used to extract frequent itemsets (items purchased together) from the data and generate rules for frequent item patterns.

20. The results are then stored in a CSV file.

21. Tkinter GUI library of python is then used for displaying the recommendations as required. 

PRESENTATION LINK - https://prezi.com/view/00iOl5BXMOLc8OIGtdu0/
