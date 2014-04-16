#import <UIKit/UIKit.h>

@protocol DFLDatePickerViewDelegate;
@protocol DFLDatePickerCell;
@protocol DFLDatePickerHeader;

@interface DFLDatePickerView : UIView

@property(nonatomic, weak) id <DFLDatePickerViewDelegate> delegate;
@property(nonatomic, strong) NSDate *selectedDate;
@property(nonatomic, strong) Class cellClass;
@property(nonatomic, strong) Class headerClass;

- (instancetype)initWithCalendar:(NSCalendar *)calendar;

@end

@protocol DFLDatePickerViewDelegate <NSObject>

- (Class <DFLDatePickerCell>)datePickerViewCellClass:(DFLDatePickerView *)pickerView;

- (Class <DFLDatePickerHeader>)datePickerViewHeaderClass:(DFLDatePickerView *)pickerView;

@end
