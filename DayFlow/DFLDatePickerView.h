#import <UIKit/UIKit.h>

@interface DFLDatePickerView : UIView

- (instancetype)initWithCalendar:(NSCalendar *)calendar;

@property(nonatomic, readwrite, strong) NSDate *selectedDate;

@end
