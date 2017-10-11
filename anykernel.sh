# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=AKT profiles friendly Kernel by MrMathematica
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=Gemini
device.name2=gemini
device.name3=MI5
device.name4=Mi5
device.name5=mi5
} # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel permissions
# set permissions for included ramdisk files
chmod -R 755 $ramdisk
chmod 644 $ramdisk/sbin/media_profiles.xml


## AnyKernel install
dump_boot;

write_boot;

## end install

