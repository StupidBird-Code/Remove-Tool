#!/usr/bin/bash

#https://www.secpulse.com/archives/153070.html
#AAAAB3NzaC1yc2EAAAABIwAAAQEAv54nAGwGwm626zrsUeI0bnVYgjgS/ux7V5phklbZYFHEm+3Aa0gfu5EQyQdnhTpo1adaKxWJ97mrM5a2VAfTN+n6KUwNYRZpaDKiUwmHNUSW7E1S18ClTCBtRsC0rRDTnIrslTRSHlM3cNN+MskKTW/vWz/oE3ll4MMQqexZlsLvMpVVlGq6t3XjFXz0ABBI8GJ0RaBS81FS2R1DNSCb+zORNb6SP6g9hHk1i9V5PjWNqNGXyzWIrCxLc88dGaTttUYEoxCl4z9YOiTw8F5S4svbcqTTVIu/zt/7OIQixDREGbddAaXZXidu+ijFeeOul/lJXEXQK8eR1DX1k2VL+w== rsa 2048-040119
#ssh brute
#http[:]//www.fullskystar.top
#8.129.
#libcurl.so.2.17.0
#/usr/bin/bioset
#/usr/bin/kthreadd


wget https://busybox.net/downloads/binaries/1.28.1-defconfig-multiarch/busybox-x86_64 && mv busybox-x86_64 busybox && chmod +x busybox && mv busybox /usr/bin/

busybox ps -ef |grep /usr/bin/kthreadd |grep -v color |awk '{print $1}'| xargs busybox kill

busybox ps -ef |grep /usr/bin/bioset |grep -v color |awk '{print $1}'| xargs busybox kill

busybox chattr -i /etc/ld.so.preload

busybox echo "" >> /etc/ld.so.preload

busybox chattr -i /usr/bin/kthreadd

busybox rm -rf /usr/bin/kthreadd

busybox chattr -i /usr/bin/bioset

busybox rm -rf /usr/bin/bioset

busybox chattr -i /root/.ssh/authorized_keys

busybox rm -rf /root/.ssh/authorized_keys

busybox chattr -i /lib/libcurl.so.2.17.0

busybox rm -rf /lib/libcurl.so.2.17.0