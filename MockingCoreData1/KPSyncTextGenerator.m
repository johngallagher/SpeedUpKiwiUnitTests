#import "KPSyncTextGenerator.h"
#import "KPApplicationStatus.h"

@implementation KPSyncTextGenerator

#pragma mark Constructor
-(id)initWithStatus:(KPApplicationStatus *)status {
    self = [super init];
    if (self) {
        _status = status;
    }

    return self;
}

+(id)generatorWithStatus:(KPApplicationStatus *)status {
    return [[KPSyncTextGenerator alloc] initWithStatus:status];
}

#pragma mark Public
-(NSString *)generate {
    return @"Last sync: Just now";
}

#pragma mark Private


@end