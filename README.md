#OTScreenshotHelper

Take screenshot on iOS devices with nice interface. Can take status bar. No private API.

![screenshot](https://raw.github.com/OpenFibers/OTScreenshotHelper/master/Screenshots/screenshot1.png "screen shot")

Interface is simple:  
You can take screen shot with status bar or not, specific a screenshot rect or orientaition.

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