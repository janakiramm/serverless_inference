sudo amazon-linux-extras install python3.8
sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3.8 /usr/bin/python
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
pip3 install  -t /mnt/efs/fs1/ml/lib -r requirements.txt
