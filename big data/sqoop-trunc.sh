aws s3 cp s3://tej-123/mysql-connector-java-8.0.23.jar .

sudo cp mysql-connector-java-8.0.23.jar /usr/lib/sqoop/lib



sqoop eval --connect "jdbc:mysql://database-1.cxydffrzfnfw.us-east-1.rds.amazonaws.com/testdb" --username=admin --password 'tejas1997' --query "TRUNCATE TABLE customer_count_purchase;"
sqoop eval --connect "jdbc:mysql://database-1.cxydffrzfnfw.us-east-1.rds.amazonaws.com/testdb" --username=admin --password 'tejas1997' --query "TRUNCATE TABLE p_v_c_day;"
sqoop eval --connect "jdbc:mysql://database-1.cxydffrzfnfw.us-east-1.rds.amazonaws.com/testdb" --username=admin --password 'tejas1997' --query "TRUNCATE TABLE purchase_c_s_b;"
sqoop eval --connect "jdbc:mysql://database-1.cxydffrzfnfw.us-east-1.rds.amazonaws.com/testdb" --username=admin --password 'tejas1997' --query "TRUNCATE TABLE purch_date;"
sqoop eval --connect "jdbc:mysql://database-1.cxydffrzfnfw.us-east-1.rds.amazonaws.com/testdb" --username=admin --password 'tejas1997' --query "TRUNCATE TABLE v_date;"
sqoop eval --connect "jdbc:mysql://database-1.cxydffrzfnfw.us-east-1.rds.amazonaws.com/testdb" --username=admin --password 'tejas1997' --query "TRUNCATE TABLE c_date;"
sqoop eval --connect "jdbc:mysql://database-1.cxydffrzfnfw.us-east-1.rds.amazonaws.com/testdb" --username=admin --password 'tejas1997' --query "TRUNCATE TABLE userid_date;"

