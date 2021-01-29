#include "sbcRootListController.h"

@interface NSTask : NSObject
-(void)setLaunchPath:(id)arg1;
-(void)launch;
@end

@implementation sbcRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)respring {
    NSTask *respringTask = [[NSTask alloc] init];
     [respringTask setLaunchPath:@"/usr/bin/sbreload"];
     [respringTask launch];
}

@end
