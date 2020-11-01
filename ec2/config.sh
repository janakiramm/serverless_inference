sudo mkdir -p /mnt/efs/fs1/ml/lib
sudo mkdir -p /mnt/efs/fs1/ml/model
sudo chown -R ec2-user:ec2-user /mnt/efs/fs1

sudo amazon-linux-extras install -y python3.8
sudo yum install -y git

sudo ln -s /usr/bin/python3.8 /usr/bin/python3
curl -O https://bootstrap.pypa.io/get-pip.py

python3 get-pip.py --user

pip3 install  -t /mnt/efs/fs1/ml/lib -r requirements.txt

cp -R model/* /mnt/efs/fs1/ml/model/
sudo chown -R 1001:1001 /mnt/efs/fs1
