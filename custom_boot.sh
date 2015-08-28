#!/bin/bash

rm boot.img
rm recovery.img
cd root/
chmod g-w -R *
find . | cpio -o -H newc | gzip -n > ../boot.gz
cd ..

cd recovery/root/
chmod g-w -R *
find . | cpio -o -H newc | gzip -n > ../../recovery.gz
cd ../..
cd rktools
./rkcrc -k ../recovery.gz ../recovery.img
./rkcrc -k ../boot.gz ../boot.img

rm ../boot.gz
rm ../recovery.gz

exit 0
