#import "DFLDatePickerCollectionView.h"

@implementation DFLDatePickerCollectionView

@dynamic delegate;

- (void)layoutSubviews
{
    [self.delegate pickerCollectionViewWillLayoutSubviews:self];
    [super layoutSubviews];
}

@end
