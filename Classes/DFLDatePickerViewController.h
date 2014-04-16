#import <UIKit/UIKit.h>
#import "DFLDatePickerView.h"

@protocol DFLDatePickerViewControllerDelegate;

@interface DFLDatePickerViewController : UIViewController

@property(nonatomic, strong) DFLDatePickerView *datePickerView;
@property(nonatomic, weak) id <DFLDatePickerViewControllerDelegate> delegate;

@end

@protocol DFLDatePickerViewControllerDelegate <NSObject>

- (void)datePickerViewController:(DFLDatePickerViewController *)controller didSelectDate:(NSDate *)date;

@optional

- (Class <DFLDatePickerCell>)datePickerViewControllerCellClass:(DFLDatePickerViewController *)controller;

- (Class <DFLDatePickerHeader>)datePickerViewControllerHeaderClass:(DFLDatePickerViewController *)controller;

@end
