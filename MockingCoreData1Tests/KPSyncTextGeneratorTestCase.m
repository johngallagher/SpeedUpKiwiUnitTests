#import "KPSyncTextGeneratorTestCase.h"
#import "KPApplicationStatus.h"
#import "KPSyncTextGenerator.h"

@implementation KPSyncTextGeneratorTestCase

-(void)setUp {
    [super setUp];
    status    = [KPApplicationStatus status];
    generator = [KPSyncTextGenerator generatorWithStatus:status];
}

/*
  Logic Table
| connection                | loading                    | sync                | result                   | camel                  |
| KPConnectionStatusOnline  | KPLoadMoreStatusNotLoading | KPSyncStatusStopped | @\"Last sync: Just now\" | LastSyncJustNow        |
| KPConnectionStatusOffline | KPLoadMoreStatusNotLoading | KPSyncStatusStopped | kSyncBarOfflineText      | SyncBarOfflineText     |
| KPConnectionStatusOnline  | KPLoadMoreStatusLoading    | KPSyncStatusStopped | kSyncBarLoadingMoreText  | SyncBarLoadingMoreText |
| KPConnectionStatusOffline | KPLoadMoreStatusLoading    | KPSyncStatusStopped | kSyncBarOfflineText      | SyncBarOfflineText     |
| KPConnectionStatusOnline  | KPLoadMoreStatusNotLoading | KPSyncStatusStarted | kSyncBarSyncingText      | SyncBarSyncingText     |
| KPConnectionStatusOffline | KPLoadMoreStatusNotLoading | KPSyncStatusStarted | kSyncBarOfflineText      | SyncBarOfflineText     |
| KPConnectionStatusOnline  | KPLoadMoreStatusLoading    | KPSyncStatusStarted | kSyncBarSyncingText      | SyncBarSyncingText     |
| KPConnectionStatusOffline | KPLoadMoreStatusLoading    | KPSyncStatusStarted | kSyncBarOfflineText      | SyncBarOfflineText     |

  Test Template
-(void)itShouldBe$RESULT_CAMEL$Given$CONNECTION$$STATUS$$LOADING$ {
    [status setConnectionStatus:$CONNECTION$];
    [status setSyncStatus:$STATUS$];
    [status setLoadMoreStatus:$LOADING$];
    [[[generator generate] should] equal:$RESULT$];
}
 */

-(void)itShouldBeLastSyncJustNowGivenKPConnectionStatusOnlineKPSyncStatusStoppedKPLoadMoreStatusNotLoading {
    [status setConnectionStatus:KPConnectionStatusOnline];
    [status setSyncStatus:KPSyncStatusStopped];
    [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
    [[[generator generate] should] equal:@"Last sync: Just now"];
}

-(void)itShouldBeSyncBarOfflineTextGivenKPConnectionStatusOfflineKPSyncStatusStoppedKPLoadMoreStatusNotLoading {
    [status setConnectionStatus:KPConnectionStatusOffline];
    [status setSyncStatus:KPSyncStatusStopped];
    [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

-(void)itShouldBeSyncBarLoadingMoreTextGivenKPConnectionStatusOnlineKPSyncStatusStoppedKPLoadMoreStatusLoading {
    [status setConnectionStatus:KPConnectionStatusOnline];
    [status setSyncStatus:KPSyncStatusStopped];
    [status setLoadMoreStatus:KPLoadMoreStatusLoading];
    [[[generator generate] should] equal:kSyncBarLoadingMoreText];
}

-(void)itShouldBeSyncBarOfflineTextGivenKPConnectionStatusOfflineKPSyncStatusStoppedKPLoadMoreStatusLoading {
    [status setConnectionStatus:KPConnectionStatusOffline];
    [status setSyncStatus:KPSyncStatusStopped];
    [status setLoadMoreStatus:KPLoadMoreStatusLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

-(void)itShouldBeSyncBarSyncingTextGivenKPConnectionStatusOnlineKPSyncStatusStartedKPLoadMoreStatusNotLoading {
    [status setConnectionStatus:KPConnectionStatusOnline];
    [status setSyncStatus:KPSyncStatusStarted];
    [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
    [[[generator generate] should] equal:kSyncBarSyncingText];
}

-(void)itShouldBeSyncBarOfflineTextGivenKPConnectionStatusOfflineKPSyncStatusStartedKPLoadMoreStatusNotLoading {
    [status setConnectionStatus:KPConnectionStatusOffline];
    [status setSyncStatus:KPSyncStatusStarted];
    [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

-(void)itShouldBeSyncBarSyncingTextGivenKPConnectionStatusOnlineKPSyncStatusStartedKPLoadMoreStatusLoading {
    [status setConnectionStatus:KPConnectionStatusOnline];
    [status setSyncStatus:KPSyncStatusStarted];
    [status setLoadMoreStatus:KPLoadMoreStatusLoading];
    [[[generator generate] should] equal:kSyncBarSyncingText];
}

-(void)itShouldBeSyncBarOfflineTextGivenKPConnectionStatusOfflineKPSyncStatusStartedKPLoadMoreStatusLoading {
    [status setConnectionStatus:KPConnectionStatusOffline];
    [status setSyncStatus:KPSyncStatusStarted];
    [status setLoadMoreStatus:KPLoadMoreStatusLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

@end