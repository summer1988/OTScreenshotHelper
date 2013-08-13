//
//  ViewController.m
//  OTNotificationViewDemo
//
//  Created by openthread on 8/9/13.
//
//

#import "ViewController.h"
#import "OTScreenshotHelper.h"
#import <QuartzCore/QuartzCore.h>

#define RADIANS(deg) ((deg) * M_PI / 180.0f)

@interface ViewController ()

@end

@implementation ViewController
{
    UIImageView *_screenshotImageView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    _screenshotImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    _screenshotImageView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    _screenshotImageView.layer.borderColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0].CGColor;
    _screenshotImageView.layer.borderWidth = 4.0f;
    [self.view addSubview:_screenshotImageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 300, 100)];
    label.text = @"Last Screen shot is in the write bounder";
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont systemFontOfSize:30.0f];
    label.numberOfLines = 0;
    [_screenshotImageView addSubview:label];
    
    UIButton *screenShotButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    screenShotButton.frame = CGRectMake(100, 200, 100, 40);
    [screenShotButton setTitle:@"ScreenShot" forState:UIControlStateNormal];
    [screenShotButton addTarget:self action:@selector(screenshotButtonTouched) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:screenShotButton];
    
    UIButton *saveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    saveButton.frame = CGRectMake(210, 200, 110, 40);
    [saveButton setTitle:@"Save To Album" forState:UIControlStateNormal];
    [saveButton addTarget:self action:@selector(saveButtonTouched) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:saveButton];
}

- (void)screenshotButtonTouched
{
    UIImage *screenShot = [OTScreenshotHelper screenshot];
    _screenshotImageView.transform = CGAffineTransformIdentity;
    _screenshotImageView.frame = (CGRect){CGPointZero, screenShot.size};
    _screenshotImageView.center = CGPointMake(CGRectGetWidth(self.view.frame) / 2, CGRectGetHeight(self.view.frame) / 2);
    _screenshotImageView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    _screenshotImageView.image = screenShot;
}

- (void)saveButtonTouched
{
    UIImageWriteToSavedPhotosAlbum(_screenshotImageView.image, nil, nil, nil);
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}

@end
