#!/bin/bash

read -p "? This script will finish the configuration of your server. You will need your server URL, and your Google Recapthca site & secret keys. Are you ready (y/n)? " cmsg

if [ "$cmsg" = "Y" -o "$cmsg" = "y" ]; then
    read -p "! Enter your server URL. IE: https://www.YourDomain.com. This should match the domain used in the NGINX configuration: " domain
    read -p "! Enter your site Recaptcha key: " pub
    read -p "! Enter your secret Recaptcha key: " prv
    php Scripts/Installation/PHP/Finalize.php "$domain" "$pub" "$prv"
else
    echo "- Server database finalization terminated";
    exit
fi
