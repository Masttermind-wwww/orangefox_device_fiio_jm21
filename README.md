# orangefox_device_fiio_jm21

This device has limit of compressed ramdisk around 30 000 000 bytes

Somewhere between 29 614 258 and 30 070 952

Probably useful link - https://github.com/SHIFTPHONES/android_bootable_bootloader_edk2/blob/sos-3.x/QcomModulePkg/Library/BootLib/BootLinux.c#L2443-L2539

Device does not support gzip compression even if it compresses size better so thats not solution

I have tried every possible way to perform diagnostics and  finding whats problem is even filling with zeroes and renaming files  but no way it could be soled I believe there is limit

So

To mount /data you need TW_INCLUDE_CRYPTO := true but your device will bootloop because ramdisk will be more 30 000 000 bytes

First I thought the problem is tw include crypto causes  bootloop so I tried to roll crypto/decrypt chant from stock to recovery and I did it partially but then hit the limit of compressed ramdisk

Btw,ramdisk itself can be more than 30 000 000 bytes but its compressed size is the limit

So there are two ways:

To build clean and light recovery with option to mount data but recovery without necessary functions almost empty

Or

To build functional recovery with many tw and of flags but without option to mount data

No more I want to do that

Will try to figure out about limit of compressed ramdisk

If there is solution - I will continue to develop it but  if there is no solution - possibly I have finished my work on that  project

Over 80 builds were built
