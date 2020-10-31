sudo amazon-linux-extras install python3.8
sudo ln -s /usr/bin/python3.8 /usr/bin/python3
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip3 install  -t /mnt/efs/fs1/ml/lib -r requirements.txt
