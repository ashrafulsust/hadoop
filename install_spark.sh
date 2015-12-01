cd ~
wget http://archive.apache.org/dist/spark/spark-1.5.0/spark-1.5.0-bin-hadoop2.6.tgz
tar zxvf spark-1.5.0-bin-hadoop2.6.tgz
rm -f spark-1.5.0-bin-hadoop2.6.tgz
mv spark-1.5.0-bin-hadoop2.6 spark
echo "export SPARK_HOME=~/spark" >> /etc/profile
echo "export PATH=\$PATH:\$SPARK_HOME/bin" >> /etc/profile
echo "export SPARK_MASTER_IP=127.0.0.1" >> /etc/profile
echo "export SPARK_LOCAL_IP=127.0.0.1" >> /etc/profile
source /etc/profile
cd $SPARK_HOME
wget http://repo1.maven.org/maven2/com/datastax/spark/spark-cassandra-connector_2.10/1.5.0-M1/spark-cassandra-connector_2.10-1.5.0-M1.jar
wget http://repo1.maven.org/maven2/org/apache/cassandra/cassandra-clientutil/2.1.5/cassandra-clientutil-2.1.5.jar
wget http://repo1.maven.org/maven2/com/datastax/cassandra/cassandra-driver-core/2.1.5/cassandra-driver-core-2.1.5.jar
wget http://repo1.maven.org/maven2/org/apache/cassandra/cassandra-thrift/2.1.5/cassandra-thrift-2.1.5.jar
wget http://repo1.maven.org/maven2/com/google/guava/guava/14.0.1/guava-14.0.1.jar
wget http://repo1.maven.org/maven2/joda-time/joda-time/2.3/joda-time-2.3.jar
wget http://repo1.maven.org/maven2/org/joda/joda-convert/1.2/joda-convert-1.2.jar
wget https://repo1.maven.org/maven2/org/apache/thrift/libthrift/0.9.2/libthrift-0.9.2.jar
wget http://repo1.maven.org/maven2/com/twitter/jsr166e/1.1.0/jsr166e-1.1.0.jar
echo "spark-shell --driver-class-path \$(echo \$SPARK_HOME/*.jar |sed 's/ /:/g')" > bin/spark_shell
chmod u+x bin/spark_shell
echo "Congratulation! Spark Setup completed successfully";
echo "To Start Spark type sh spark_shell"
