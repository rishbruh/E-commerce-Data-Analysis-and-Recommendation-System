# E-COMMERCE BIG DATA ANALYSIS AND RECOMMENDATION SYSTEM

To perform extensive analysis on an E-Commerce store’s dataset and derive meaningful insights about customer behaviour and to create a rudimentary recommendation system using the Apriori algorithm for the recommendation of products for the user

DATASET USED -

E-Commerce customer behavior data from multi category store (Source - https://www.kaggle.com/mkechinov/ecommerce-behavior-data-from-multi-category-store)

PROJECT FLOW -

{"type":"PreziDoc","doc":"<prezi version=\"2\" xmlns=\"http://prezi.com/schema/prezi/2\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://prezi.com/schema/prezi/2 http://prezi.com/schema/prezi/2\"><xFields><xField name=\"topicType\"><xEnum type=\"TopicType\" value=\"UnifiedSmartStructures\"/></xField><xField name=\"grouping\"><xEnum type=\"Grouping\" value=\"on\"/></xField><xField name=\"editorWorkflowMode\"><xEnum type=\"EditorWorkflowMode\" value=\"BrandKit\"/></xField><xField name=\"editorPath\"><xConstructor type=\"editorPath\" name=\"editorPathV2\"><xField name=\"pathGenerationStrategy\"><xConstructor type=\"pathGenerationStrategy\" name=\"visitOverviewAndParent\"/></xField><xField name=\"steps\"><xArray><xConstructor type=\"editorPathStep\" name=\"flyToOverviewEp\"/></xArray></xField></xConstructor></xField></xFields><aspectRatio><aspectRatio value=\"16:9\"/></aspectRatio><background><background><layers><array><backgroundImage><depth><double value=\"4\"/></depth><width><double value=\"1800\"/></width><height><double value=\"1099\"/></height><onlineAssetId><string value=\"4756070432\"/></onlineAssetId><onlineAssetUrl><string value=\"http://0103.static.prezi.com.s3.amazonaws.com/media/f/f/7/e40179de3b214b51bfc9f570a2a31f02576b2.png\"/></onlineAssetUrl><assetSourceFilename><string value=\"bg4-07.png\"/></assetSourceFilename><localToWorld><transform2D x=\"0\" y=\"0\" scale=\"20.81102377486657\" rotation=\"0\"/></localToWorld></backgroundImage></array></layers></background></background><documentStyle><documentStyle><fontClasses><array><fontClass><fontFamily><string value=\"Antonio\"/></fontFamily><fontWeight><fontWeight value=\"bold\"/></fontWeight><name><string value=\"title\"/></name></fontClass><fontClass><fontFamily><string value=\"Antonio\"/></fontFamily><fontWeight><fontWeight value=\"bold\"/></fontWeight><name><string value=\"subtitle\"/></name></fontClass><fontClass><fontFamily><string value=\"Comfortaa\"/></fontFamily><fontWeight><fontWeight value=\"bold\"/></fontWeight><name><string value=\"body\"/></name></fontClass><fontClass><fontFamily><string value=\"Antonio\"/></fontFamily><fontWeight><fontWeight value=\"bold\"/></fontWeight><name><string value=\"subtitle_2\"/></name></fontClass><fontClass><fontFamily><string value=\"Comfortaa\"/></fontFamily><fontWeight><fontWeight value=\"bold\"/></fontWeight><name><string value=\"body_2\"/></name></fontClass></array></fontClasses><fontFamilies><array><fontFamily><fontFaces><array><fontFace><xFields><xField name=\"fontSrcWithOrigin\"><xJust><xRecord type=\"fontSourceWithOrigin\"><xField name=\"origin\"><xEnum type=\"FontOrigin\" value=\"prezi\"/></xField><xField name=\"source\"><xString value=\"Antonio-Bold.keg\"/></xField></xRecord></xJust></xField></xFields><fontSrc><string value=\"Antonio-Bold.keg\"/></fontSrc><fontWeight><fontWeight value=\"bold\"/></fontWeight></fontFace><fontFace><xFields><xField name=\"fontSrcWithOrigin\"><xJust><xRecord type=\"fontSourceWithOrigin\"><xField name=\"origin\"><xEnum type=\"FontOrigin\" value=\"prezi\"/></xField><xField name=\"source\"><xString value=\"Antonio-Regular.keg\"/></xField></xRecord></xJust></xField></xFields><fontSrc><string value=\"Antonio-Regular.keg\"/></fontSrc></fontFace></array></fontFaces><name><string value=\"Antonio\"/></name></fontFamily><fontFamily><fontFaces><array><fontFace><xFields><xField name=\"fontSrcWithOrigin\"><xJust><xRecord type=\"fontSourceWithOrigin\"><xField name=\"origin\"><xEnum type=\"FontOrigin\" value=\"prezi\"/></xField><xField name=\"source\"><xString value=\"Comfortaa-Bold.keg\"/></xField></xRecord></xJust></xField></xFields><fontSrc><string value=\"Comfortaa-Bold.keg\"/></fontSrc><fontWeight><fontWeight value=\"bold\"/></fontWeight></fontFace><fontFace><xFields><xField name=\"fontSrcWithOrigin\"><xJust><xRecord type=\"fontSourceWithOrigin\"><xField name=\"origin\"><xEnum type=\"FontOrigin\" value=\"prezi\"/></xField><xField name=\"source\"><xString value=\"Comfortaa-Regular.keg\"/></xField></xRecord></xJust></xField></xFields><fontSrc><string value=\"Comfortaa-Regular.keg\"/></fontSrc></fontFace></array></fontFaces><name><string value=\"Comfortaa\"/></name></fontFamily></array></fontFamilies></documentStyle></documentStyle><path><array><flyToOverview/></array></path><templateInfo><templateInfo><baseId><string value=\"marketing_strategy_-_flow:marketing_strategy_-_flow_default\"/></baseId><themeId><string value=\"not-used\"/></themeId></templateInfo></templateInfo><zObjects><array><zImage><id><string value=\"7216282E865E5A34577DA9DC3A5B2EB1\"/></id><onlineAssetId><string value=\"15923845374\"/></onlineAssetId><onlineAssetUrl><string value=\"http://0103.static.prezi.com.s3.amazonaws.com/media/8/f/1/1/f/2ed69654b36af21edebace96a75.png\"/></onlineAssetUrl><offlineAssetId><string value=\"0.7369730f3e0ad\"/></offlineAssetId><assetSourceFilename><string value=\"final archi.png\"/></assetSourceFilename><width><double value=\"1441\"/></width><height><double value=\"693\"/></height><localToWorld><transform2D x=\"6488.943672253736\" y=\"4402.164915886424\" scale=\"3.970730624994554\" rotation=\"0\"/></localToWorld></zImage></array></zObjects></prezi>","bounds":{"centerX":6488.943672253736,"centerY":4402.164915886424,"width":5721.822830617152,"height":2751.7163231212257,"degrees":0},"parent":"3BA68D0C3848468D15A5EE96CE0B8FBB","parentBounds":{"centerX":7346.628919573953,"centerY":4402.164915886425,"width":11529.376970125602,"height":6485.274545695651,"degrees":0},"viewport":{"x":1408.999779959273,"y":1061.3712155831272,"width":11875.258279229365,"height":6681.587400606593},"singlePageCopied":false,"parentIsPage":false}

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
 
