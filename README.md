# MIUI for LG L90
This is the patchrom folder for w7

**Build instructions**

First you have to get the MIUI patchrom with these commands:

    mkdir patchrom
    cd patchrom
    repo init -u git://github.com/MiCode/patchrom.git -b miui-7 -m android-4.4.4.xml

Add the LG L90 source:

    curl --create-dirs -L -o .repo/local_manifests/w7-manifest.xml -O -L https://raw.githubusercontent.com/SlimShadys/patchrom_lge_w7/master/w7-manifest.xml    

After that sync the source with:

    repo sync


To build MIUI 7 move to the w7 directory and start the build:

    cd w7
    ./build.sh
