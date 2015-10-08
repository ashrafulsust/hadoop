mkdir ~/hadoop-install
cd ~/hadoop-install
wget http://www.us.apache.org/dist/hadoop/common/hadoop-2.7.0/hadoop-2.7.0.tar.gz
tar -zxf hadoop-2.7.0.tar.gz
mkdir ~/hadoop-home
mv hadoop-2.7.0/* ~/hadoop-home/
# Give read-write access to the hadoop-home folder to all group members
chmod 770 ~/hadoop-home -R


mkdir ~/hadoop-scripts
cd ~/hadoop-scripts
wget https://raw.githubusercontent.com/ashrafulsust/hadoop/master/hadoop-env-vars.sh
echo -e "source /home/hadoop/hadoop-scripts/hadoop-env-vars.sh" >> ~/.bashrc
source ~/.bashrc

mkdir $HADOOP_CONF_DIR -p
cp $HADOOP_HOME/etc/hadoop/* $HADOOP_CONF_DIR/
chmod 770 $HADOOP_HOME -R
chmod 770 $HADOOP_CONF_DIR -R

cd ~
mkdir temp
chmod 777 temp -R
mkdir hadoop_nnode
chmod 770 hadoop_nnode
mkdir hadoop_dnode
chmod 770 hadoop_dnode

cd $HADOOP_CONF_DIR
rm -f core-site.xml
wget https://raw.githubusercontent.com/ashrafulsust/hadoop/master/core-site.xml
rm -f hdfs-site.xml
wget https://raw.githubusercontent.com/ashrafulsust/hadoop/master/hdfs-site.xml

hdfs namenode -format

#Setting up YARN
cd $HADOOP_CONF_DIR
rm -f yarn-site.xml
wget https://raw.githubusercontent.com/ashrafulsust/hadoop/master/yarn-site.xml
rm -f mapred-site.xml
wget https://raw.githubusercontent.com/ashrafulsust/hadoop/master/mapred-site.xml

start-yarn.sh

jps