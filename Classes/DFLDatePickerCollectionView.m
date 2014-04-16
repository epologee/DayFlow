#import "DFLDatePickerCollectionView.h"

@implementation DFLDatePickerCollectionView

@dynamic delegate;

- (id)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithFrame:frame collectionViewLayout:layout];

    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
    }

    return self;
}

- (void)layoutSubviews
{
    [self.pickerCollectionViewDelegate pickerCollectionViewWillLayoutSubviews:self];
    [super layoutSubviews];
}

@end
