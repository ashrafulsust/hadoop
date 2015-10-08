#Creating Necessary Users
groupadd hadoop-group
useradd hdfs -g hadoop-group -c "HDFS Daemon Host"
echo hdfs:hdfs | chpasswd
useradd yarn -g hadoop-group -c "YARN Daemon Host"
echo yarn:yarn | chpasswd
useradd mapred -g hadoop-group -c "MapReduceV1 Daemon Host"
echo mapred:mapred | chpasswd
useradd hadoop -g hadoop-group -c "Hadoop Configuration Holder"
echo hadoop:hadoop | chpasswd
chmod 770 /home/hadoop/ -R
echo "Please Type su hadoop and then type sh hadoop_install.sh"