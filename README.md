# Adobe Flex Example App

## Libraries

Please use the latest versions of libraries in your project. You can find them here:
https://developers.heyzap.com/docs/ane_setup_and_requirements

This sample app project is currently using the following SDK versions:

- Heyzap SDK 9.3.0
- AdColony SDK 2.0.9
- AdMob SDK 7.4.1
- AppLovin SDK 1.0.10
- Chartboost iOS SDK 5.5.3
- Chartboost Android SDK 5.5.3
- Facebook Audience Network SDK 4.3.0
- UnityAds SDK 1.5.8
- Vungle ANE 2.4.4
- InMobi ANE SDK 2.1.1 ( 5.2.0 iOS SDK and 5.2.1 Android SDK ) 

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
    - Select Adobe Air+Flex SDK. This test application has been tested with Flex 4.6 and Adobe Air 19.
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

- Conflicts with libraries. If you have selected `google-play-services.ane` don't add any additional
libraries like `com.vungle.extensions.android.GooglePlayServices.ane`. We use Vungle's GooglePlayServices.ane to avoid conflicts.
Internal java libraries can confict too, like `android-support-v4.jar` which is present in Facebook's ANE and Vungle's `AndroidSupportLib.ane`. We have repacked the original
`Facebook.ane` and moved it to the `android-libs/` folder to avoid conflicts. The original Facebook ANE is used for iOS as it avoids this conflict.

- Error java.lang.OutOfMemoryError: GC overhead limit exceeded. This error appears while packing Android library. 
Increase the memory allocated for Java and the Adobe Air/Flex framework. Open `jvm.config` at `$AIR_BASE_DIR/bin` and set `java.args` with the line `java.args=-Xmx1024m -Xms512m -Dsun.io.useCanonCaches=false` instead of what is there. (`-Xmx` sets the max ram allocated for the Java runtime, and `-Xms` is the minimum.)

