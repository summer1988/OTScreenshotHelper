#OTScreenshotHelper

Take screenshot on iOS devices with nice interface. Can snapshot status bar. No private API.

![screenshot](https://raw.github.com/OpenFibers/OTScreenshotHelper/master/Screenshots/screenshot1.png "screen shot")

#Feature

* Take screen shot with or without status bar.
* You can specific a screenshot rect or orientaition.
* Great performance: single graphic context per each screenshot.
* Supports iOS 4.3 - iOS 7.0, supports SDK6 - SDK7. Using ARC.
* Simple interface:

```
//Get the screenshot of a view.
+ (UIImage *)screenshotOfView:(UIView *)view;

//Get the screenshot, image rotate to status bar's current interface orientation. With status bar.
+ (UIImage *)screenshot;

//Get the screenshot, image rotate to status bar's current interface orientation.
+ (UIImage *)screenshotWithStatusBar:(BOOL)withStatusBar;

//Get the screenshot with rect, image rotate to status bar's current interface orientation.
+ (UIImage *)screenshotWithStatusBar:(BOOL)withStatusBar rect:(CGRect)rect;

//Get the screenshot with rect, you can specific a interface orientation.
+ (UIImage *)screenshotWithStatusBar:(BOOL)withStatusBar rect:(CGRect)rect orientation:(UIInterfaceOrientation)o;
```

#Lisence
MIT.
