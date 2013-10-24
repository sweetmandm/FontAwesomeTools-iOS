# FontAwesomeTools-iOS
## simpler fontawesome implementation for iOS

## Installation Step 1:

CocoaPods is great:
1. add `pod 'FontAwesomeTools'` to your Podfile
2. `pod install`
3. open the xcworkspace
4. Modify your project's Info.plist file as described below

Non-CocoaPods is easy too:
1. Drag the folder 'FontAwesomeTools-iOS' into your project
2. Modify your project's Info.plist file as described below

## Installation Step 2:

Modify your project's Info.plist file:
1. Open your project's Info.plist file by clicking on the project in the Navigator on the left, then choosing 'Info'.
2. Under 'Custom iOS Target Properties', click the last Key in the list, then click on the '+' icon.
3. For the new key, type 'Fonts provided by application'.
4. Twirl down the arrow icon, double-tap the right-most box to enter the string value, and type 'fontawesome-webfont.ttf'.
![Info.plist modification](https://raw.github.com/sweetmandm/FontAwesomeTools-iOS/master/img/install-instructions.png)

There are already a couple FontAwesome libraries for iOS, here is why I decided to make this one:

1. Easy upgradability and simpler implementation. No decoupling of the icon name and the unicode value -- I decided to define macros vs. create an enum lookup. The macro header file is a format that can be upgraded instantly with a short script written for a new css file, minimum thought and time required.
2. Prefer a naming system as similar as possible to the original FontAwesome CSS. For example, the icon title for 'fa-glass' becomes 'fa_glass', since dashes are disallowed in c macro names.
3. Reduced Complexity. I thought I could improve on the available implementations, and hopefully that will make FontAwesomeTools-iOS easier for you to work with.

## Shameles Plug:
I built this for inclusion in my app design templates available at (TapTemplate)[www.taptemplate.com]