#!/usr/bin/env python3

import os
import re
import sys

# TrackPoint thinkpad的小红点
# TouchPad 触摸板
# AT 笔记本键盘
setting_devices = '(TrackPoint|TouchPad|AT)'

if len(sys.argv) < 2 | len(sys.argv) > 3:
    print('Please use the command like this way:\n    keybroad.py <--off|--on>\n')
    sys.exit()
    
if sys.argv[1] == '--off':
    state = 0
elif sys.argv[1] == '--on':
    state = 1
else:
    print('Please use the command like this way:\n    keybroad.py <--off|--on>\n')
    sys.exit()

my_input_devices = ''
for i in os.popen('xinput'):
    my_input_devices += i

pattern = re.compile(setting_devices + '.*?id=(\d*)')
devices_list = re.findall(pattern, my_input_devices)

# 开启和关闭键位映射
# Xmodmap.conf 是映射的配置文件
if state == 1:
    os.system("xmodmap ./Xmodmap.conf")
else:
    os.system("xmodmap ./Xmodmap.conf")
    
for my_id in devices_list:
    os.system("xinput set-prop " + str(my_id[1]) + " 'Device Enabled' " + str(state))
