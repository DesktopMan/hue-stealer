#!/bin/bash
username=""
address=""
url="http://$address/api"

# From https://www.reddit.com/r/Hue/comments/3wchnf/philips_hue_blocks_osram_ge_and_cree_bulbs_with/cxvj23t/

# Create new user (do this first, then set the username and ip above)
# curl -X POST -d '{"devicetype": "HueLights#API"}' "$url"

# Perform a Touchlink action; requires API 1.9 or higher
curl -X PUT -d '{"touchlink":true}' "$url/$username/config"

echo "Hold the bulb to the bridge, then press any key to continue"
read

# Search for new lights; bridge searches for 1 minute and adds up to 15 lights
curl -X POST "http://$address/api/$username/lights"

echo "Wait for the bulb to blink, then press any key to continue"
read

# Check for any newly discovered lights
curl "$url/$username/lights/new"
