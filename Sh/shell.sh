mkdir /user/bigdatacloudxlab27228/sv_train_landing
hdfs dfs -mkdir hdfs_train_landing
hdfs dfs -copyFromLocal /home/bigdatacloudxlab27228/sv_train_landing/train.csv /user/bigdatacloudxlab27228/hdfs_train_landing
hive -f /home/bigdatacloudxlab27228/sv/hive.hql
spark-submit /home/bigdatacloudxlab27228/sv/spark.py
sh /home/bigdatacloudxlab27228/sv/sqoop.sh