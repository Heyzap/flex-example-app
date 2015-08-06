# Adobe Flex Example App

Heyzap SDK Version: 9.0.6

## Setting up the project
1. Open Adobe Flash Builder. Click File > Import, and select _Existing Project into Workspace_ under the _General_ dropdown. In the next dialog, choose the root directory of this respository, and click _Finish_
2. Right-click on the project in the Package Explorer and select _Properties_
3. In the project properties window, select _Flex Build Packaging_. For both Android and iOS, make sure that the `Heyzap.ane` extension is selected for packaging under the _Native Extensions_ tab.
4. Under _Run/Debug Settings_ in the project properties window, click "New..." to create a new run configuration and select "Mobile Application" and click _OK_
5. From the _Target platform_ dropdown select which platform you wish to build this app for (iOS or Android)
6. Choose _On device_ as the launch method.
7. Change your _AppId_ to the one that is used for your app on your [developer dashboard](https://developers.heyzap.com/dashboard) (e.g. `com.example.app`)
8. Click _Apply_ and then _OK_. You can repeat steps 4-8 to create another Run/Debug configuration for another platform.
9. In `views/FlexExampleAppHomeView.mxml`, change "\<APP_ID\>" in the `creationCompleteHandler` method to your Heyzap publisher ID.

### Updating the Heyzap SDK
To update the Heyzap SDK, simply download our [latest SDK](https://developers.heyzap.com/sdk/download?platform=air), extract the ZIP file, and replace `libs/HeyzapAds.ane` with the newer version.

#### Changing the Heyzap SDK path in the project
1. Right-click on the project on the Package Explorer and select _Properties_
2. In the Project Properties window, select _Flex Build Path_ on the side bar.
3. Under the _Native Extensions_ tab, highlight `HeyzapAds.ane - libs` and select the _Remove_ button.
4. Select the _Add ANE..._ button and choose the path to your copy of `HeyzapAds.ane`.

### iOS Setup

#### Exporting your Apple Certificate and its Private Key
1. Follow instructions on the [Apple Developer Site](https://developer.apple.com) to get an Apple Developer Certificate and Provisioning Profile and import the certificate into XCode.
1. Open the Keychain Access app and select _My Certificates_
2. Select your Apple Developer certificate and click on the dropdown on the right to view it's private key
3. Right click (or ctrl+click) on the private key and choose "Export …"
4. Enter in a password for your key and save it somewhere in your file system.

#### Setting up on Flash Builder 
1. In the project properties window, select _Flex Build Packaging_ and then _Apple iOS_.
2. Fill in the path to your Apple iOS Developer certificate and Provisioning file in the _Digital Signature_ tab.
3. Under the _Native Extensions_ tab enter in the full path to the Apple iOS SDK on your mac (the default path should be: `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk`)
4. Click _Apply_ and then _OK_.

## Running
Plug in a compatible android or iOS device, right-click on the project in the Package Explorer, then select _Run As_/_Debug As_ and choose your run/debug configuration from the submenu.

Further information on the Heyzap SDK can be found at https://developers.heyzap.com/docs/ane_setup_and_requirements
