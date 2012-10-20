#import "KPSyncTextGeneratorTestCase.h"
#import "KPApplicationStatus.h"
#import "KPSyncTextGenerator.h"

@implementation KPSyncTextGeneratorTestCase

-(void)setUp {
    [super setUp];
    status = [KPApplicationStatus status];
    generator = [KPSyncTextGenerator generatorWithStatus:status];
}

-(void)whenOnline {
    [status setConnectionStatus:KPConnectionStatusOnline];
}
-(void)whenOffline {
    [status setConnectionStatus:KPConnectionStatusOffline];
}

-(void)whenNotLoading {
    [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
}
-(void)whenLoading {
    [status setLoadMoreStatus:KPLoadMoreStatusLoading];
}

-(void)whenSyncStopped {
    [status setSyncStatus:KPSyncStatusStopped];
}
-(void)whenSyncStarted {
    [status setSyncStatus:KPSyncStatusStarted];
}

-(void)itShouldShowLastSyncTimeWhenDefault {
    [[[generator generate] should] equal:@"Last sync: Just now"];
}

-(void)itShouldShowOfflineMessageWhenOfflineSyncStoppedNotLoading {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenNotLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

-(void)itShouldShowLoadingMore {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenLoading];
    [[[generator generate] should] equal:kSyncBarLoadingMoreText];
}

-(void)itShouldShowSyncingMessage {
    [self whenOffline];
    [self whenSyncStarted];
    [self whenLoading];
    [[[generator generate] should] equal:kSyncBarSyncingText];
}
-(void)itShouldShowOfflineMessageWhenOffline2 {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenNotLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

-(void)itShouldShowLoadingMore2 {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenLoading];
    [[[generator generate] should] equal:kSyncBarLoadingMoreText];
}

-(void)itShouldShowSyncingMessage2 {
    [self whenOffline];
    [self whenLoading];
    [self whenSyncStarted];
    [[[generator generate] should] equal:kSyncBarSyncingText];
}
-(void)itShouldShowOfflineMessageWhenOffline3 {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenNotLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

-(void)itShouldShowLoadingMore3 {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenLoading];
    [[[generator generate] should] equal:kSyncBarLoadingMoreText];
}

-(void)itShouldShowSyncingMessage3 {
    [self whenOffline];
    [self whenLoading];
    [self whenSyncStarted];
    [[[generator generate] should] equal:kSyncBarSyncingText];
}
-(void)itShouldShowOfflineMessageWhenOffline4 {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenNotLoading];
    [[[generator generate] should] equal:kSyncBarOfflineText];
}

-(void)itShouldShowLoadingMore4 {
    [self whenOffline];
    [self whenSyncStopped];
    [self whenLoading];
    [[[generator generate] should] equal:kSyncBarLoadingMoreText];
}

-(void)itShouldShowSyncingMessage4 {
    [self whenOffline];
    [self whenLoading];
    [self whenSyncStarted];
    [[[generator generate] should] equal:kSyncBarSyncingText];
}

@end