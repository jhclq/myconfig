#!/usr/bin/env python3

import os
import re
import sys

setting_devices = '(TrackPoint|TouchPad|AT)'

my_input_devices = ''

if (len(sys.argv) < 2) | (len(sys.argv) > 3):
    print('Please use the command like this way:\n    keybroad.py <--off|--on>\n')
    sys.exit()
    
if sys.argv[1] == '--off':
    state = 0
elif sys.argv[1] == '--on':
    state = 1
else:
    print('Please use the command like this way:\n    keybroad.py <--off|--on>\n')
    sys.exit()


for i in os.popen('xinput'):
    my_input_devices += i

pattern = re.compile(setting_devices + '.*?id=(\d*)')
devices_list = re.findall(pattern, my_input_devices)

for my_id in devices_list:
    #print("xinput set-prop " + str(my_id[1]) + "' Device Enabled '" + str(state))
    os.system("xinput set-prop " + str(my_id[1]) + " 'Device Enabled' " + str(state))
