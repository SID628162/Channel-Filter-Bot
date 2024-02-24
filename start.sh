if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SID628162/Channel-Filter-Bot.git /Channel-Filter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Channel-Filter-Bot
fi
cd /Channel-Filter-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
