#import <DayFlow/DFLDatePickerView.h>
#import <DayFlow/DFLDatePickerViewController.h>

#import <UIKit/UIKit.h>

@interface DFXAppDelegate : UIResponder <UIApplicationDelegate, DFLDatePickerViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@end

@implementation DFXAppDelegate

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    DFLDatePickerViewController *picker = [[DFLDatePickerViewController alloc] init];
	picker.delegate = self;
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:picker];
	self.window.rootViewController = navigationController;
	
    [self.window makeKeyAndVisible];
	return YES;
}

- (void) datePickerViewController:(DFLDatePickerViewController *)controller didSelectDate:(NSDate *)date {

	[[[UIAlertView alloc] initWithTitle:@"Picked Date" message:[date description] delegate:nil cancelButtonTitle:@":D" otherButtonTitles:nil] show];
	
	//	If you set it to something not nil, we’ll call you again
	//	so don’t.
	
	controller.datePickerView.selectedDate = nil;

}

@end
