#!/bin/sh

echo "Installing ethgas..."

sudo cp -f ethgas /usr/bin/ethgas

sudo mkdir /usr/lib/ethgas
sudo cp -f gas-pump.svg /usr/lib/ethgas/gas-pump.svg
sudo cp -f gas-pump-symbolic.svg /usr/share/icons/hicolor/scalable/status/gas-pump-symbolic.svg

installfail(){
   echo "Installation has failed."
   exit 1
}

if [ -f /usr/bin/ethgas ];then
   echo "- Turning ethgas into an executable..."
   sudo chmod +x /usr/bin/ethgas
   if ethgas babyisalive; then echo "Done! Running 'ethgas' command as example to use it:" && (ethgas &);exit 0; else installfail; fi
   else
      installfail
fi
