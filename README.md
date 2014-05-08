# enable_debug_flags.sh

To enable debug flags of `ril`, `mms`, `network` in runtime:

1. `$./enable_debug_flags.sh`
2. Wait for B2G restarting complete.

Note: `network` flag is only available after 1.5/2.0.

# tcpdump

To capture the packets in the devices.

1. Install attached tcpdump command into test device:

   `adb remount; adb push tcpdump system/bin/;adb shell chmod 777 /system/bin/tcpdump`
2. Start capturing tcpdump:

   `adb shell tcpdump -i any -p -s 0 -w /data/capture.pcap`
3. Backup tcpdump result:

   `adb pull /data/capture.pcap .`
