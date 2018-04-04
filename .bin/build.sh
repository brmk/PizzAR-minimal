# delete build dir
rm -rf ./.build

# build apps
meteor build ./.build --server https://pizzar-brmk.herokuapp.com --mobile-settings ./settings-production.json

# sign android app using private key
# jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 ./.build/android/release-unsigned.apk pestle -keystore ./.bin/pestle.keystore
# $ANDROID_HOME/build-tools/25.0.3/zipalign 4 ./.build/android/release-unsigned.apk ./.build/android/release.apk

# jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 ./.build/android/project/build/outputs/apk/release/android-release-unsigned.apk pestle -keystore ./.bin/pestle.keystore

# $ANDROID_HOME/build-tools/25.0.3/zipalign 4 ./.build/android/project/build/outputs/apk/release/android-release-unsigned.apk ./.build/android/release.apk

open ./.build/