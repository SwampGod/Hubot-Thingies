#!/bin/bash
# Hubot Process Monitor
# Restart Hubot When It Goes Down
# By SwampGod - 10-2012
# -------------------------------------------------------------------------

# Path to your standard up-down-restart script for hubot
RESTART="/etc/init.d/hubot restart"

#Path to pgrep command
PGREP="/usr/bin/pgrep" # This works on Debian Squeeze

# Hubot should be the only process run by this user so only a single pid
# number is returned. In my case hubot is run by user hubot. Simple :)
HBTPD="-u hubot"

# find hubot pid
$PGREP ${HBTPD}

if [ $? -ne 0 ] # if not running 
then
   # restart hubot
    $RESTART
fi
