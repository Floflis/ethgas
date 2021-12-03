#!/bin/sh

echo "Installing ethgas..."

sudo cp -f ethgas /usr/bin/ethgas

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
