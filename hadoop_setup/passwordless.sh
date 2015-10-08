ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
cat .ssh/id_rsa.pub | ssh hdfs@38.108.92.102 'cat >> .ssh/authorized_keys'
cat .ssh/id_rsa.pub | ssh yarn@38.108.92.102 'cat >> .ssh/authorized_keys'
cat .ssh/id_rsa.pub | ssh mapred@38.108.92.102 'cat >> .ssh/authorized_keys'
cat .ssh/id_rsa.pub | ssh hadoop@38.108.92.102 'cat >> .ssh/authorized_keys'