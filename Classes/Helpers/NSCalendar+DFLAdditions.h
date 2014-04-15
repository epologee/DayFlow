#import <Foundation/Foundation.h>

@interface NSCalendar (DFLAdditions)

- (NSDateFormatter *)dfl_dateFormatterNamed:(NSString *)name withConstructor:(NSDateFormatter *(^)(void))block;

@end
