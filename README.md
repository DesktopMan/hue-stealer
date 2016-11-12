# About

This script allows you to steal Philips Hue light bulbs from one bridge
to another. Particularly useful when buying packs that come with
lightbulbs that are factory paired.

# Usage

1. Create a user on the Hue bridge:

   ```
   curl -X POST -d '{"devicetype": "HueLights#API"}' "http://<bridge ip>/api"
   ```

2. Edit the script with your username and bridge IP.

3. Run the script

   ```
   ./steal.sh
   ```
