#import "DFLDatePickerViewController.h"
#import "DFLDatePickerCell.h"
#import "DFLDatePickerHeader.h"

@interface DFLDatePickerViewController () <DFLDatePickerViewDelegate>
@end

@implementation DFLDatePickerViewController
{
    DFLDatePickerView *_datePickerView;
    Class <DFLDatePickerCell> _cellClass;
    Class <DFLDatePickerHeader> _headerClass;
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

- (Class <DFLDatePickerCell>)datePickerViewCellClass:(DFLDatePickerView *)pickerView
{
    if (!_cellClass)
    {
        if ([self.delegate respondsToSelector:@selector(datePickerViewControllerCellClass:)])
        {
            _cellClass = [self.delegate datePickerViewControllerCellClass:self];
        }
        else
        {
            _cellClass = NSClassFromString(@"DFLDatePickerDayCell");
        }
    }

    return _cellClass;
}

- (Class <DFLDatePickerHeader>)datePickerViewHeaderClass:(DFLDatePickerView *)pickerView
{
    if (!_headerClass)
    {
        if ([self.delegate respondsToSelector:@selector(datePickerViewControllerHeaderClass:)])
        {
            _headerClass = [self.delegate datePickerViewControllerHeaderClass:self];
        }
        else
        {
            _headerClass = NSClassFromString(@"DFLDatePickerMonthHeader");
        }
    }

    return _headerClass;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self addObserver:self forKeyPath:@"datePickerView.selectedDate" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:(__bridge void *)self];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self removeObserver:self forKeyPath:@"datePickerView.selectedDate" context:(__bridge void *)self];
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
