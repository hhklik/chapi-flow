cp -f bin/chapi /usr/local/bin/chapi
chmod +x /usr/local/bin/chapi
if [ -d /usr/local/etc/chapi.d ]; then
  echo "chapi.d is already exist"
else
  cp -rf chapi.d /usr/local/etc/chapi.d
fi
chapi_home=$(grep "CHAPI_HOME=" /etc/environment | awk '{print $1}')
if [ -z $chapi_home ]; then
    echo "aqui"
    echo "CHAPI_HOME=/usr/local/etc/chapi.d" >> /etc/environment
    source /etc/environment
fi

