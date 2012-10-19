#import "Kiwi.h"
#import "KPApplicationStatus.h"
#import "KPSyncTextGenerator.h"

SPEC_BEGIN(KPSyncBarSpec)

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
                    status = [KPApplicationStatus statusWithLastSyncTime:today];
                });
                context(@"sync status stopped", ^{
                    beforeEach(^{

                    });
                    context(@"load more status not loading", ^{
                        beforeEach(^{

                        });
                        context(@"Connection status online", ^{
                            beforeEach(^{

                            });
                            it(@"should show last sync time", ^{
                                KPSyncTextGenerator *generator = [KPSyncTextGenerator generatorWithStatus:status];
                                [[[generator generate] should] equal:@"Last sync: Just now"];
                            });
                        });
                    });
                });
            });
        });
    });

    SPEC_END
