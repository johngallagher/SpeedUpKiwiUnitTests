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
    if ([_status connectionStatus] == KPConnectionStatusOffline)
        return kSyncBarOfflineText;

    if ([_status syncStatus] == KPSyncStatusStarted)
        return kSyncBarSyncingText;

    if ([_status loadMoreStatus] == KPLoadMoreStatusLoading)
        return kSyncBarLoadingMoreText;

    return @"Last sync: Just now";
}

@end