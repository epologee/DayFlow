#import <UIKit/UIKit.h>
#import "DFLDatePickerView.h"

@class DFLDatePickerViewController;

@protocol DFLDatePickerViewControllerDelegate

- (void)datePickerViewController:(DFLDatePickerViewController *)controller didSelectDate:(NSDate *)date;

@end

@interface DFLDatePickerViewController : UIViewController

@property(nonatomic, readonly, strong) DFLDatePickerView *datePickerView;
@property(nonatomic, readwrite, weak) id <DFLDatePickerViewControllerDelegate> delegate;

@end
