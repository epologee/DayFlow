#import <DayFlow/DFLDayFlow.h>
#import "DFXDatePickerViewCell.h"

@implementation DFXDatePickerViewCell

@synthesize date = _date;
@synthesize enabled = _enabled;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    if (self)
    {
        self.textLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        _textLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self.contentView addSubview:_textLabel];
    }

    return self;
}

- (void)setDate:(DFLDatePickerDate)date
{
    _date = date;

    self.textLabel.text = [NSString stringWithFormat:@"%i", date.day];
}

- (void)setEnabled:(BOOL)enabled
{
    _enabled = enabled;

    self.textLabel.alpha = enabled ? 1.0 : 0.1;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [UIColor colorWithWhite:1 alpha:0.9].CGColor);
    CGContextFillRect(ctx, self.bounds);
}

@end