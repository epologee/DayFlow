#import "DFLDatePickerViewController.h"

@interface DFLDatePickerViewController () <DFLDatePickerViewDelegate>
@end

@implementation DFLDatePickerViewController
{
    DFLDatePickerView *_datePickerView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.datePickerView];
}

- (DFLDatePickerView *)datePickerView
{
    if (!_datePickerView)
    {
        self.datePickerView = [[DFLDatePickerView alloc] init];
        _datePickerView.frame = self.view.bounds;
        _datePickerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _datePickerView.delegate = self;
    }

    return _datePickerView;
}

- (Class)datePickerViewCellClass:(DFLDatePickerView *)pickerView
{
    Class cellClass = NULL;

    if ([self.delegate respondsToSelector:@selector(datePickerViewControllerCellClass:)])
    {
        cellClass = [self.delegate datePickerViewControllerCellClass:self];
    }

    return cellClass ?: NSClassFromString(@"DFLDatePickerDayCell");
}

- (Class)datePickerViewHeaderClass:(DFLDatePickerView *)pickerView
{
    Class headerClass = NULL;

    if ([self.delegate respondsToSelector:@selector(datePickerViewControllerHeaderClass:)])
    {
        headerClass = [self.delegate datePickerViewControllerHeaderClass:self];
    }

    return headerClass ?: NSClassFromString(@"DFLDatePickerMonthHeader");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self addObserver:self forKeyPath:@"datePickerView.selectedDate" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self removeObserver:self forKeyPath:@"datePickerView.selectedDate" context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"datePickerView.selectedDate"])
    {
        NSDate *toDate = change[NSKeyValueChangeNewKey];
        if ([toDate isKindOfClass:[NSDate class]])
        {
            //	toDate might be NSNull
            [self.delegate datePickerViewController:self didSelectDate:toDate];
        }
    }
}

@end
