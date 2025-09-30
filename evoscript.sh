#First lets setup environment

git clone https://github.com/akhilnarang/scripts &&  cd scripts &&  bash setup/android_build_env.sh && echo Islem Tamam.

#Then Lets sync

repo init -u https://github.com/Evolution-X/manifest -b bka --git-lfs
 && repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
 && echo Islem Tamam

#Lets sync our trees too!

git clone https://github.com/nyxalune/device_nothing_Spacewar.git
 -b bka device/nothing/Spacewar && echo Islem Tamam

#Now for my final trick, lets build.

source build/envsetup.sh && lunch lineage_Spacewar-userdebug && m evolution


