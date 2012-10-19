#import "KPApplicationStatus.h"

@implementation KPApplicationStatus

-(id)initWithConnectionStatus:(KPConnectionStatus)connectionStatus loadMoreStatus:(KPLoadMoreStatus)loadMoreStatus syncStatus:(KPSyncStatus)syncStatus lastSyncTime:(NSDate *)lastSyncTime {
    self = [super init];
    if (self) {
        _connectionStatus = connectionStatus;
        _loadMoreStatus   = loadMoreStatus;
        _syncStatus       = syncStatus;
        _lastSyncTime     = lastSyncTime;
    }

    return self;
}

+(id)statusWithConnectionStatus:(KPConnectionStatus)connectionStatus loadMoreStatus:(KPLoadMoreStatus)loadMoreStatus syncStatus:(KPSyncStatus)syncStatus lastSyncTime:(NSDate *)lastSyncTime {
    return [[KPApplicationStatus alloc] initWithConnectionStatus:connectionStatus loadMoreStatus:loadMoreStatus syncStatus:syncStatus lastSyncTime:lastSyncTime];
}

+(KPApplicationStatus *)status {
    return [[self class] statusWithConnectionStatus:KPConnectionStatusDefault
                                     loadMoreStatus:KPLoadMoreStatusDefault
                                         syncStatus:KPSyncStatusDefault
                                       lastSyncTime:nil];

}

@synthesize connectionStatus = _connectionStatus;

@synthesize loadMoreStatus = _loadMoreStatus;

@synthesize syncStatus = _syncStatus;

@synthesize lastSyncTime = _lastSyncTime;




#pragma mark Constructor

#pragma mark Public

#pragma mark Private



@end