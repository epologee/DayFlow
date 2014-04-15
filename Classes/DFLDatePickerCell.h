#import <UIKit/UIKit.h>
#import "DFLDayFlow.h"

@protocol DFLDatePickerCell <NSObject>

@property(nonatomic, readwrite, assign) DFLDatePickerDate date;
@property(nonatomic, getter=isEnabled) BOOL enabled;

@end
