#import "Kiwi.h"
#import "KPApplicationStatus.h"
#import "KPSyncTextGenerator.h"

SPEC_BEGIN(KPSyncTextGeneratorSpec)

    /*

   Things text depends on:

   * Sync status
   * Load more status
   * Connection status
   * Last sync time

    */
    describe(@"KPSyncTextGenerator", ^{
        __block NSDate *today;
        __block KPApplicationStatus *status;
        describe(@"#generate", ^{
            context(@"last sync time now", ^{
                beforeEach(^{
                    today = [NSDate date];
                    status = [KPApplicationStatus status];
                    [status setLastSyncTime:today];
                });
                context(@"sync status stopped", ^{
                    beforeEach(^{
                        [status setSyncStatus:KPSyncStatusStopped];
                    });
                    context(@"load more status not loading", ^{
                        beforeEach(^{
                            [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
                        });
                        context(@"Online status online", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOnline];
                            });
                            it(@"should show last sync time", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:@"Last sync: Just now"];
                            });
                        });
                        context(@"Connection status offline", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOffline];
                            });
                            it(@"should show offline message", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:kSyncBarOfflineText];
                            });
                        });
                    });
                });
            });
        });
    });

    SPEC_END
