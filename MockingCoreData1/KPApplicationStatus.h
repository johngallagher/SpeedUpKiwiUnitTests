typedef enum {
    KPSyncStatusStopped = 1,
    KPSyncStatusStarted = 2,
    KPSyncStatusDefault = KPSyncStatusStopped,
} KPSyncStatus;

typedef enum {
    KPConnectionStatusOnline  = 1,
    KPConnectionStatusOffline = 2,
    KPConnectionStatusDefault = KPConnectionStatusOnline,
} KPConnectionStatus;

typedef enum {
    KPLoadMoreStatusNotLoading = 1,
    KPLoadMoreStatusLoading    = 2,
    KPLoadMoreStatusDefault = KPLoadMoreStatusNotLoading,
} KPLoadMoreStatus;

@interface KPApplicationStatus : NSObject {
    KPConnectionStatus _connectionStatus;
    KPLoadMoreStatus   _loadMoreStatus;
    KPSyncStatus       _syncStatus;
    NSDate *_lastSyncTime;
}

@property(nonatomic) KPConnectionStatus connectionStatus;
@property(nonatomic) KPLoadMoreStatus   loadMoreStatus;
@property(nonatomic) KPSyncStatus       syncStatus;
@property(nonatomic, strong) NSDate *lastSyncTime;

-(id)initWithConnectionStatus:(KPConnectionStatus)connectionStatus loadMoreStatus:(KPLoadMoreStatus)loadMoreStatus syncStatus:(KPSyncStatus)syncStatus lastSyncTime:(NSDate *)lastSyncTime;

+(id)statusWithConnectionStatus:(KPConnectionStatus)connectionStatus loadMoreStatus:(KPLoadMoreStatus)loadMoreStatus syncStatus:(KPSyncStatus)syncStatus lastSyncTime:(NSDate *)lastSyncTime;

+(KPApplicationStatus *)status;

-(void)setSyncStatus:(KPSyncStatus)status;
@end
