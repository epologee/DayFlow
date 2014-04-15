#import <UIKit/UIKit.h>

@class DFLDatePickerCollectionView;

@protocol DFLDatePickerCollectionViewDelegate <UICollectionViewDelegate>

- (void)pickerCollectionViewWillLayoutSubviews:(DFLDatePickerCollectionView *)pickerCollectionView;

@end

@interface DFLDatePickerCollectionView : UICollectionView

@property(nonatomic, assign) id <DFLDatePickerCollectionViewDelegate> delegate;

@end
