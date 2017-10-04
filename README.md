# Adobe Flex Example App

## Libraries

Please use the latest versions of libraries in your project. You can find them here:
https://developers.heyzap.com/docs/ane_setup_and_requirements

This sample app project is currently using the following SDK versions:

- Heyzap AIR SDK 9.13.4
- AdColony AIR SDK 3.1.0 ( 3.1.1 iOS SDK and 3.1.2 Android SDK )
- AdMob iOS SDK 7.18.0 from [Heyzap](https://github.com/Heyzap/ios-admob-ane)
- AdMob Android SDK via Google Play Services 11.0.4 & support-v4/recyclerview-v7 25.3.1 from [Heyzap](https://github.com/Heyzap/google-play-services-ane)
- AppLovin AIR SDK ( 4.3.1 iOS SDK and 7.3.2 Android SDK ) from [Heyzap](https://github.com/Heyzap/applovin-ane)
- Chartboost AIR SDK 6.6.3
- Facebook Audience Network AIR SDK 4.25.0 from [Heyzap](https://github.com/Heyzap/facebook-audience-network-ane)
- UnityAds AIR SDK 2.1.0 from [Heyzap](https://github.com/Heyzap/unityads-ane)
- Vungle ANE 3.0.7 ( 4.0.9 iOS SDK and 4.0.3 Android SDK )
- InMobi ANE SDK ( 6.2.1 iOS SDK and 6.2.4 Android SDK ) from [Heyzap](https://github.com/Heyzap/inmobi-ane)

To update the Heyzap SDK, simply download our [latest SDK](https://developers.heyzap.com/sdk/download?platform=air),
extract the `.zip` file, and replace `libs/HeyzapAds.ane` with the newer version. Do the same for all other SDKs included in the project by downloading the latest supported versions of each (downloads can be found [here](https://developers.heyzap.com/docs/ane_setup_and_requirements).

## How to work with this project

Use this project if you want to test the Heyzap SDK on Adobe AIR.
Some ad network SDK ANEs are separate based on platform, and some of them work cross-platform.

The `libs/` dir contains ANEs you can use on iOS or Android.
The `ios-libs/` dir contains ANEs you should use only on iOS.
The `android-libs/` dir contains ANEs you should use only on Android.

Setup the project in your IDE, add the appropriate libraries, connect your device, and build!

## Setting up the project

1. Import the project to your IDE as a Flex project.
    - Select Adobe Air+Flex SDK. This test application has been tested with Flex 4.6 and Adobe Air 25.
1. Set the application descriptor to `flex-example-app-ios.xml` for iOS or `flex-example-app-android.xml` for Android (located in the `src/` folder).
1. Set "FlexExampleApp" as the main `.mxml` file for the project.
1. Open `FlexExampleApp.mxml` and change `<APP_ID>` in the call to `HeyzapAds.getInstance().start` to your own publisher ID, which can be found on the [Heyzap docs](https://developers.heyzap.com/docs/ane_setup_and_requirements).
1. Set the application ID in the application descriptors, `flex-example-app-android.xml` and `flex-example-app-ios.xml` to your own app's bundle identifier by replacing `YOUR_PACKAGE_ID` with it.
1. Add libraries to the project. Common ANEs are located under the `libs/` folder. For iOS also add the ANEs from the `ios-libs/` folder, and for Android add all ANEs from the `android-libs/` folder.
1. Add all the splash screen files named `src/Default*.png` to the iOS build settings in your IDE (optional).
1. Setup platform specific settings (certificates, keys, etc.) in your IDE as necessary.
1. Compile and run!

Further information on the Heyzap SDK can be found at https://developers.heyzap.com/docs/ane_setup_and_requirements

## Known problems

- Compilation failed while executing : ld64. Read here: https://forums.adobe.com/thread/1686169
  - Summary: replace the `ld64` linker executable at `{AIR_SDK}/lib/aot/bin/ld64/` by copying `/usr/bin/ld` to that directory and renaming it `ld64`

- Conflicts with libraries. Only use one ANE that includes Google Play Services, for instance. We provide one, but some plugins embed GPS into their ANE in an un-removable fashion. Other Java libraries can confict too, like `android-support-v4.jar`, which is also included in our `GooglePlayServices.ane`.

- Error java.lang.OutOfMemoryError: GC overhead limit exceeded. This error appears while packing Android library. 
Increase the memory allocated for Java and the Adobe Air/Flex framework. Open `jvm.config` at `$AIR_BASE_DIR/bin` and set `java.args` with the line `java.args=-Xmx1024m -Xms512m -Dsun.io.useCanonCaches=false` instead of what is there. (`-Xmx` sets the max ram allocated for the Java runtime, and `-Xms` is the minimum.)

