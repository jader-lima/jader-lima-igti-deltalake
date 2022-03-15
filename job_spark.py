from pyspark.sql.functions import mean, max, min, col, count
from pyspark.sql import SparkSession

spark = (
    SparkSession.builder.appName("ExerciseSpark").getOrCreate()
)

enem = (
spark
.read
.format("csv")
.option("header", True)
.option("inferSchema", True)
.option("delimiter",";")
.option("s3://datalake-igti-jader/raw_data/enem")
)

(
enem
.write
.mode("overwrite")
.format("parquet")
.partitionBy("year")
.save("s3://datalake-igti-jader/staging/enem")
)