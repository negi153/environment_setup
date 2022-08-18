# How to setup Spark in windows?
1. Download Spark from https://spark.apache.org/downloads.html
2. Unzip and put in c drive `C:\Users\Mukesh\`.
3. For spark to work `jdk` need to be installed 
    
    `java --version`

4. Update below environment variables
    * HADOOP_HOME : `C:\Users\Mukesh\spark-3.3.0-bin-hadoop3\bin`
    * Path : `C:\Users\Mukesh\spark-3.3.0-bin-hadoop3\bin`
    * PYSPARK_PYTHON : `python`

5. Type below command in cmd to check if configured correctly.
    * `spark-shell`
    * `scala`
    * `pyspark`

6. interaticng with spark

    * Interatice shell
        * Type `pyspark`
        * By default SparkContext is automatically created which can be used as variable `sc`
        * Type `sc` , it will show a SparkContext variable
    * Script
        * Install python module

            `pip install -r requirements.txt`

        * SparkContext is starting point of any spark application, so need to create it's object first
            ```
            from pyspark import SparkContext
            sc1=SparkContext(master='local',appName='test1')
            #master - Spark Master URL to connect to
            #appName - set application name

            iris1=sc1.textFile("a.csv")
            print(iris1.collect())```
        * execute pyspark script.

            `spark-submit  my_application.py`

        *  To get the web url

            `sc.uiWebUrl` 
