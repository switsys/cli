#!/bin/sh

VSN=1.1.3

curl -LO https://github.com/ipinfo/cli/releases/download/ipinfo-${VSN}/ipinfo_${VSN}.deb
sudo dpkg -i ipinfo_${VSN}.deb
rm ipinfo_${VSN}.deb

echo
echo 'You can now run `ipinfo`'.

if [ -f "$0" ]; then
    rm $0
fi
