sudo chown ec2-user:ec2-user /mnt/efs/fs1
mkdir -p /mnt/efs/fs1/ml/lib
mkdir -p /mnt/efs/fs1/ml/model

sudo amazon-linux-extras install python3.8
sudo ln -s /usr/bin/python3.8 /usr/bin/python3
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip3 install  -t /mnt/efs/fs1/ml/lib -r requirements.txt

cp -R models/* /mnt/efs/fs1/ml/model/
sudo chown -R 1001:1001 /mnt/efs/fs1/ml/
