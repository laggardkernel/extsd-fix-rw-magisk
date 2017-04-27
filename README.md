### Notes about the Magisk version

- [This](https://github.com/laggardkernel/extsd-fix-rw-magisk) is an adaption by me([laggardkernel](https://github.com/laggardkernel)) of the original [ExtSD Fix](http://forum.xda-developers.com/android/software/fix-extsd-fix-v1-0b-2016-01-18-t3296266) scripts. All the credit belongs to the creator [rufus.wilson@XDA](http://forum.xda-developers.com/member.php?u=6935794).
- I unlocked the API limit in the script to Fix ExtSD RW for Nougat(API 24+), which is exactly the same patch solution for Marshmallow(API 23). Since people report the effectiveness for Nougat in the original thread.
- Install: Flash the zip in recovery or MagiskManager. Reboot is needed.
- Uninstall:
    1. In recovery, flash the zip again;
    2. In MagiskManager, uninstall the module and reboot. The module will handle the restoration and cleaning up by itself. (Magisk v12+ is requried for the cleaning up)
- Wellcome your feedbacks.

The orginal post is put as below.

-----

**Disclaimer: I([rufus.wilson@XDA](http://forum.xda-developers.com/member.php?u=6935794)) am not responsible for anything bad that may occur from the use of this zip, but I will take all the credit you can give if it works for you.**

# ExtSD Fix (Magisk)

![ExtSD Fix rw Logo](http://cs5-3.4pda.to/8173732.jpg)

[Download latest stable](http://forum.xda-developers.com/devdb/project/dl/?id=18224) - [MD5 checksum](http://forum.xda-developers.com/devdb/project/dl/?id=18225)

[Download latest dev](http://forum.xda-developers.com/devdb/project/dl/?id=18827) - [MD5 checksum](http://forum.xda-developers.com/devdb/project/dl/?id=18828)

In KitKat, Lollipop and Marshmallow, policies on writing permissions for external SD cards have been changed. This flashable recovery file automatically appends the correct permissions to the file as explained in many tutorials on the web ([here](http://android-revolution-hd.blogspot.co.uk/2015/01/how-to-unlock-external-sd-card-writing.html) or [here](http://forum.xda-developers.com/xperia-z1/help/lollipop-rom-failed-to-write-external-t3083401)) or as what many apps do ([here](https://play.google.com/store/apps/details?id=nextapp.sdfix)).

### Advantages

The advantage of this flashable zip over the other methods is that:

- you don't need to install any apps,
- you can revert by reflashing (**not tested for marshmallow**),
- it does not require you to have root (**needs to be confirmed**),
- ~~you don't need a custom recovery (**needs to be confirmed**).~~

### Installation

It can **insert and remove** the permission to write on the external sdcard. To install follow these steps:

1. Turn off phone,
2. Boot into recovery,
3. Backup your system and data partition,
4. Flash this zip file once,
5. Reboot phone normally.

To revert the changes, follow the same steps again. This means that flashing it twice will have no effect.

**Marshmallow is not supported yet, implementation is in progress.**

**Note**: On Marshmallow, busybox will be installed if not already present. It can also be installed as a standalone [app](https://play.google.com/store/apps/details?id=stericson.busybox "BusyBox by Stephen (Stericson)"). You should an also add init.d support to your phone if not already available using an [app](https://play.google.com/store/search?q=init.d&c=apps "Search init.d in Google Play").

### How to report a bug

- Check if someone else reported that it did/didn't work,
- Backup, clean flash, reinstall all apps and then flash ExtSD Fix,
- Submit a bug report [here](http://forum.xda-developers.com/devdb/project/?id=13505#bugReporter) with both the original and modified **packages.xml** and the recovery log file as suggested [here](http://forum.xda-developers.com/showpost.php?p=67140057&postcount=430).

### Changelog

- v2.9b - 2016-06-09
    - Added double flashing revert for MM.
- v2.8b - 2016-06-09
    - Added more logging to:
        - during flashing: /data/ExtSD_Fix_RW_inst.log
        - during boot: /data/ExtSD_Fix_RW_initd.log
- v2.7b - 2016-06-08
    - Renamed script,
    - Changed permissions.
- v2.6b - 2016-06-07
    - Changed permissions.
- v2.5b - 2016-06-07
    - Changed permissions,
    - Added support for limited backup files.
- v2.4b - 2016-06-05
    - Corrected bugs.
- v2.3b - 2016-06-02
    - Included debug messages.
- v2.2b - 2016-06-02
    - Corrected bugs. "ERROR:2" should be fixed.
- V2.1b - 2016-05-19
    - Implemented solution from [here](http://forum.xda-developers.com/showpost.php?p=66875227&postcount=232) and [here](http://forum.xda-developers.com/showpost.php?p=66914278&postcount=254).
- V1.9b - 2016-05-04
    - Implemented solution from [here](http://forum.xda-developers.com/showpost.php?p=66554730&postcount=27). **PLEASE TEST AND REPORT.**
- V1.8b - 2016-02-04
    - Corrected bug for Marshmallow.
- V1.7b - 2016-02-02
    - Added support for Marshmallow.
- V1.6b - 2016-01-27
    - Added revert on second run.
- V1.5b - 2016-01-26
    - Corrected bug in check for API version.
- V1.4b - 2016-01-26
    - Changed format of backed up filename.
    - Added check for API version ( 19<= API <= 22 ).
- V1.3b - 2016-01-22
    - Backed up file is renamed with time and date.
- V1.2b - 2016-01-21
    - Moved code into update-binary.
- V1.1b - 2016-01-19
    - Removed testing commands.
- V1.0b - 2016-01-18
    - Initial submission

### XDA:DevDB Information

**ExtSD Fix, Tool/Utility for all devices (see above for details)**

##### Contributors

[rufus.wilson](http://forum.xda-developers.com/member.php?u=6935794)

##### Version Information
```
Status: Testing
Current Beta Version: v2.9b
Beta Release Date: 2016-06-09

Created 2016-01-18
Last Updated 2016-06-15
```

### Credit
- Origianally created by [rufus.wilson@XDA](http://forum.xda-developers.com/member.php?u=6935794) in [[FIX][ExtSD] ExtSD Fix](http://forum.xda-developers.com/android/software/fix-extsd-fix-v1-0b-2016-01-18-t3296266)
- Ported as a Magisk module([This repository](https://github.com/laggardkernel/extsd-fix-rw-magisk)) by [laggardkernel@Github](https://github.com/laggardkernel)

------

### Tested devices and systems
**When you have tested it could you report your experience with the device model and the android version you used.**

I will summarize here the success and failures.


##### Success
- OnePlus X - CM 12.1
- N4 w/TW 6.0.1 MM
- sony z3c concept rom(mm)
- Samsung Galaxy Express 2 with CM13
- Xperia M with CM13
- Sony Z3 .570 stock
- asus zenfone 2
- Asus ZenFone 4 - Stock v7.4.4 (Lollipop) (all opened apps had FC on reboot)
- asus zenfone 5 XOSP rom
- Sony Xperia Z3 (Sometimes is overwritten)
- SM-G910F Rom ALEXNDR COJ3 Deodexed
- Samsung galaxy s5 g900f stock marshmallow
- z3c with rom slimm 1.5
- Galaxy S7 SM-G930FD 6.0.1 Rooted Xposed
- Xiaomi Redmi 1S RR 5.6.8 which is a CM13(R28)
- Sony Z3 D6653 running on RXSW Marshmallow Edition [3.0.0] [12/04/16] [6.0.1]
- LG L90 D415
- Redmi 1s using OctOS M ROM
- xt907 JBBL- cm13, 01-05-2016
- Redmi 2, CM 13.1-20160417-SNAPSHOT
- z3 570 rxsw
- LG G3 VS985 variant running CM 13 6.0.1 nightlies. Using 777 Kernel & TWRP 3.0.2
- z3 dual d6633 running marshmallow 6.0.1 official
- Oppo find 7a x9006 on 6.0.1 rooted with twrp 3.0


##### Failure
- LG D855 32 Gb with CM13 2016-05-10 and TWRP 3.0.0.0 recovery
- Sony z3 MM
- g900f blisspop 6.01
- Samsung N7105T, unofficial wilson3q cm 13
