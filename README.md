# OnePlus 8 Pro (Non-Root needed) Debloater

Safe debloater for newly buyed device.

ADB bash script for safely debloat OnePlus 8 Pro with Android 11 / OxygenOS 11.0.3 / 2021-01-28 day.

## Steps

1. (for paranoids) First run your device, factory reset, remove sim cards.
1. Skip all configurations, don't connect to WiFi.
1. Go to Settings -> Informations -> Tap 10 times on Compilation - **Enable Developer Settings**.
1. Go to Developer Settings, enable USB Debugging
1. Connect device to your PC
1. Try to connect with adb to shell, type `adb shell`, accept on device connection.
1. Run mine script in bash:
    ```bash
    ./debloat.sh
    ```
1. Connect do WiFi, let it finish configuration, let it download updates, also of Google Play store.
1. When done **run script again** to remove new downloaded bloats.


Tested on OxygenOS 11.0.3.

## What's removed

### Facebook and Instagram
```
com.facebook.appmanager
com.facebook.orca
com.facebook.katana
com.facebook.services
com.facebook.system
com.instagram.android
```

### Netflix
```
com.netflix.mediaclient
com.netflix.partner.activation
```

### Google non necessary (for me) applications

```
com.google.android.apps.youtube.music
com.google.android.apps.tachyon
com.google.android.music
com.google.android.videos
com.google.android.apps.wellbeing
com.google.android.apps.magazines
com.google.android.apps.podcasts
com.google.android.apps.subscriptions.red
```

### Android Easter Egg and feedback service
```
com.android.egg
com.google.android.feedback
```

### OnePlus non necessary (for me) applications
```
com.oneplus.backuprestore
com.oneplus.backuprestore.remoteservice
com.oneplus.gamespace
net.oneplus.forums
com.oneplus.account
com.oneplus.twspods
cn.oneplus.oemtcma
cn.oneplus.photos
```