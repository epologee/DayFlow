#import <UIKit/UIKit.h>

@protocol DFLDatePickerViewDelegate;

@interface DFLDatePickerView : UIView

@property(nonatomic, weak) id <DFLDatePickerViewDelegate> delegate;
@property(nonatomic, strong) NSDate *selectedDate;
@property(nonatomic, strong) Class cellClass;
@property(nonatomic, strong) Class headerClass;

- (instancetype)initWithCalendar:(NSCalendar *)calendar;

@end

@protocol DFLDatePickerViewDelegate <NSObject>

- (Class)datePickerViewCellClass:(DFLDatePickerView *)pickerView;

- (Class)datePickerViewHeaderClass:(DFLDatePickerView *)pickerView;

@end
