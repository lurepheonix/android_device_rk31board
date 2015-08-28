#/bin/sh

# some preparations
RKCRC="out/target/product/rk31board/rktools/rkcrc"
OUT=$PWD/out
TMP=/tmp

echo "*******************************"
echo "Create RockChips Images..."
echo "*******************************"
#
# copy content in the new build
#
echo "** Copy common content"
cp -r device/rockchip/rk31board/prebuilt/app/* $OUT/target/product/rk31board/system/app &>/dev/null
cp -r device/rockchip/common/gapps/* $OUT/target/product/rk31board/system &>/dev/null


#
# create a new system.img
#
echo "** Creating system.img"
rm -f $OUT/system.img &>/dev/null
mkuserimg.sh out/target/product/rk31board/system out/system.img ext4 system 610000000 out/target/product/rk31board/root/file_contexts &>/dev/null

#
# create boot.img
#
echo "** Creating boot.img"

rm -f $OUT/boot.img &>/dev/null
pushd out/target/product/rk31board/root/ &>/dev/null
echo "** Modify default.prop"
sed -i "s/ro.adb.secure=1/ro.adb.secure=0/g" default.prop
sed -i "s/ro.secure=1/ro.secure=0/g" default.prop
sed -i "s/ro.allow.mock.location=0/ro.allow.mock.location=1/g" default.prop
chmod g-w -R *
find . | cpio -o -H newc | gzip -n > $OUT/boot.gz
popd &>/dev/null

$RKCRC -k $OUT/boot.gz $OUT/boot.img &>/dev/null
rm $OUT/boot.gz

echo "** DONE ***********************"
exit 0
