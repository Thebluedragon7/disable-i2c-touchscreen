# Disable Touchscreen Device

This script allows you to disable a specific touchscreen device by unbinding it from the `hid-multitouch` driver. To use this script, you need to find the Device ID of the touchscreen device you want to disable.

## Finding the Device ID

1. Open a terminal.

2. Run the following command to list the devices managed by the `hid-multitouch` driver:

   ```bash
   ls /sys/bus/hid/drivers/hid-multitouch
   ```

3. Look for the line that corresponds to your touchscreen device. The Device ID typically follows this format: `(4 characters):(4 characters):(4 characters).(4 characters)`. Note down your device's Device ID.

## Using the Script

1. Open the `disableTouch.sh` script in a text editor.

2. Locate the `DEVICE_ID` variable in the script.

3. Replace the existing value with the Device ID you found in the previous step.

4. Save the script.

5. Make the script executable by running the following command in your terminal:

   ```bash
   chmod +x disableTouch.sh
   ```

6. Run the script as a superuser (root) to disable the touchscreen device:

   ```bash
   sudo ./disableTouch.sh
   ```
The script will disable the specified touchscreen device by unbinding it from the `hid-multitouch` driver. Please ensure you have identified the correct Device ID to avoid disabling the wrong device.
