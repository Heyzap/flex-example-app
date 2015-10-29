# Adobe Flex Example App

Android apk file with all networks enabled can be found in bin folder.


## Libraries

Please use the latest versions of libraries in your project. You can find them here:
https://developers.heyzap.com/docs/ane_setup_and_requirements

Current project is using the following libs:
Heyzap SDK 9.2.4

AdColony SDK 2.0.9
AdMob SDK 7.4.1
AppLovin SDK 1.0.10
Chartboost iOS SDK 5.5.3
Chartboost Android SDK 5.5.3
Facebook Audience Network SDK 4.3.0
UnityAds SDK 1.4.5
Vungle iOS SDK 3.1.0
Vungle Android SDK 3.3.0

To update the Heyzap SDK, simply download our [latest SDK](https://developers.heyzap.com/sdk/download?platform=air),
extract the ZIP file, and replace `libs/HeyzapAds.ane` with the newer version. Do the same for all other libraries included in the project.

## How to work with this project

Use this project if you want to test Heyzap API with different AD networks.
Setup libraries including in project according to the platform you test on.

libs/ dir contains common libraries you should use on iOS or Android.
ios-libs/ dir contains libraries you should use only on iOS.
android-libs/ dir contains libraries you should use only on Android.

Setup the project, add needed libraries, connect your device and run it.

## Setting up the project

1 Import project to your IDE as Flex project.
2 Select Adobe Air+Flex SDK. Application was tested with Flex 4.6 and Adobe Air 17.
3 Set application descriptor to flex-example-app-ios.xml for iOS or flex-example-app-android.xml for Android (located in src/ folder)/
6 Set "FlexExampleApp" as main mxml file.
7 Add libraries to the project. Common libraries are located under libs/ folder. For iOS platform add libaries from android-libs/ folder, for Android
add all libraries from android-libs/ folder.
7 Add all splash screen files located under src ( with .png extensions ) to iOS package files ( for iOS platform only ). 
These files should be places to package under the root directory. Don't use subfolders here.
8 Setup platform specific settings ( certificates, keys etc ).
9 Compile and run!

## Running
Plug in a compatible android or iOS device, right-click on the project in the Package Explorer, then select _Run As_/_Debug As_ and choose your run/debug configuration from the submenu.

Further information on the Heyzap SDK can be found at https://developers.heyzap.com/docs/ane_setup_and_requirements

## What to change to get started

This example application is setup for working with our APP_ID ( for demo purposes ). To start with your own APP_ID please do the following changes:

1 Change APP_ID in FlexExampleApp.mxml to your own ID.You can find it in Heyzap docs.
HeyzapAds.getInstance().start("<YOUR_APP_ID>", HeyzapAds.FLAG_DISABLE_AUTOMATIC_FETCH);

2 Change package id in -android.xml and -ios.xml descriptors. You can find it in ad networks.
<id><YOUR_PACKAGE_ID></id>
To setup ad networks you can use our integration wizard.  
https://developers.heyzap.com/integration_wizard#/steps/pickNetworks

3 Compile and run!

## Known problems

- Compilation failed while executing : ld64. Read here: https://forums.adobe.com/thread/1686169

- Conflicts with libraries. If you have selected google-play-services.ane don't add any additional
libraries like com.vungle.extensions.android.GooglePlayServices.ane. We use Vungle's GooglePlayServices.ane to avoid conflicts.
Internal java libraries can confict too like android-support-v4.jar which is present in Facebook.ane and Vungle's AndroidSupportLib.ane. We have repacked original
Facebook.ane and moved it to android-libs/ folder to avoid conflicts. In this case original Facebook ANE is using for iOS project.

- Error java.lang.OutOfMemoryError: GC overhead limit exceeded. This error appears while packing Android library. 
Increase memory for java in Adobe Air/Flex framework. Open jvm.config at $AIR_BASE_DIR/bin and set java.args=-Xmx1024m -Xms512m -Dsun.io.useCanonCaches=false

