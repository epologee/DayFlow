#import <UIKit/UIKit.h>
#import "DFLDayFlow.h"

@interface DFLDatePickerDayCell : UICollectionViewCell

@property(nonatomic, readwrite, assign) DFLDatePickerDate date;
@property(nonatomic, getter=isEnabled) BOOL enabled;

@end
