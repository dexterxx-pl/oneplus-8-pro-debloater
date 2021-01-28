#!/bin/bash

# Packages to uninstall
upackage=(
    com.facebook.appmanager
    com.facebook.orca
    com.facebook.katana
    com.facebook.services
    com.facebook.system
    com.instagram.android
    com.google.android.apps.youtube.music
    com.google.android.apps.tachyon
    com.google.android.music
    com.google.android.videos
    com.netflix.mediaclient
    com.netflix.partner.activation
    com.oneplus.backuprestore
    com.oneplus.backuprestore.remoteservice
    com.oneplus.gamespace
    net.oneplus.forums
    com.google.android.apps.wellbeing
    com.oneplus.account
    org.ifaa.aidl.manager
    com.oneplus.twspods
    com.android.egg
    cn.oneplus.oemtcma
    com.google.android.feedback
    cn.oneplus.photos
    com.google.android.apps.magazines
    com.google.android.apps.podcasts
    com.google.android.apps.subscriptions.red
)

# Packages to disable
dpackage=(
)


for p in "${upackage[@]}"; do
    echo "Uninstalling package $p";
    adb shell pm uninstall --user 0 $p
done;

for p in "${dpackage[@]}"; do
    echo "Disabling package $p";
    adb shell pm disable-user --user 0 $p
done;
  
