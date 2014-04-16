#import <UIKit/UIKit.h>

@protocol DFLDatePickerCollectionViewDelegate;

@interface DFLDatePickerCollectionView : UICollectionView

@property(nonatomic, assign) id <DFLDatePickerCollectionViewDelegate> pickerCollectionViewDelegate;

@end

@protocol DFLDatePickerCollectionViewDelegate <UICollectionViewDelegate>

- (void)pickerCollectionViewWillLayoutSubviews:(DFLDatePickerCollectionView *)pickerCollectionView;

@end