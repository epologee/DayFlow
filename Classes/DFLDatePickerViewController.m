#import "DFLDatePickerViewController.h"

@implementation DFLDatePickerViewController

@synthesize datePickerView = _datePickerView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.datePickerView];
}

- (DFLDatePickerView *)datePickerView
{
    if (!_datePickerView)
    {
        _datePickerView = [[DFLDatePickerView alloc] init];
        _datePickerView.frame = self.view.bounds;
        _datePickerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return _datePickerView;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self addObserver:self forKeyPath:@"datePickerView.selectedDate" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:(void *) self];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self removeObserver:self forKeyPath:@"datePickerView.selectedDate" context:(void *) self];
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
