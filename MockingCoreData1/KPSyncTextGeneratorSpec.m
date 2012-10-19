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
                context(@"when not syncing", ^{
                    beforeEach(^{
                        [status setSyncStatus:KPSyncStatusStopped];
                    });
                    context(@"when not loading more", ^{
                        beforeEach(^{
                            [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
                        });
                        context(@"online", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOnline];
                            });
                            it(@"should show last sync time", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:@"Last sync: Just now"];
                            });
                        });
                        context(@"offline", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOffline];
                            });
                            it(@"should show offline message", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:kSyncBarOfflineText];
                            });
                        });
                    });
                    context(@"when loading more", ^{
                        beforeEach(^{
                            [status setLoadMoreStatus:KPLoadMoreStatusLoading];
                        });
                        context(@"online", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOnline];
                            });
                            it(@"should show loading more", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:kSyncBarLoadingMoreText];
                            });
                        });
                        context(@"offline", ^{
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
                context(@"when syncing", ^{
                    beforeEach(^{
                        [status setSyncStatus:KPSyncStatusStarted];
                    });
                    context(@"when not loading more", ^{
                        beforeEach(^{
                            [status setLoadMoreStatus:KPLoadMoreStatusNotLoading];
                        });
                        context(@"online", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOnline];
                            });
                            it(@"should show syncing message", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:kSyncBarSyncingText];
                            });
                        });
                        context(@"offline", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOffline];
                            });
                            it(@"should show offline message", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:kSyncBarOfflineText];
                            });
                        });
                    });
                    context(@"when loading more", ^{
                        beforeEach(^{
                            [status setLoadMoreStatus:KPLoadMoreStatusLoading];
                        });
                        context(@"online", ^{
                            beforeEach(^{
                                [status setConnectionStatus:KPConnectionStatusOnline];
                            });
                            it(@"should show syncing message", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:kSyncBarSyncingText];
                            });
                        });
                        context(@"offline", ^{
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
