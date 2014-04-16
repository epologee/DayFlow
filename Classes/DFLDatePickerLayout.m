#import "DFLDatePickerLayout.h"
#import "NSFastEnumeration+TTTMapping.h"

@implementation DFLDatePickerLayout

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray *attributeList = [super layoutAttributesForElementsInRect:rect];

    [attributeList ttt_map:^id(UICollectionViewLayoutAttributes *attributes, NSUInteger idx, BOOL *stop) {
        return [self layoutAttributesForItemAtIndexPath:attributes.indexPath];
    }];

    return attributeList;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewLayoutAttributes *attributes = [super layoutAttributesForItemAtIndexPath:indexPath];

    NSInteger weekDay = indexPath.item % 7;

    CGRect frame = CGRectMake((CGFloat) weekDay * 45.5, attributes.frame.origin.y, 45.5, attributes.frame.size.height);
    if (weekDay >= 6)
    {
        frame.size.width = 47;
    }
    attributes.frame = frame;

    return attributes;
}

@end