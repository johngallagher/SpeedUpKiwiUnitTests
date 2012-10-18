#import "Kiwi.h"

SPEC_BEGIN(KPCoreDataSpec)

describe(@"KPCoreDataSpec", ^{
    describe(@"#", ^{
        context(@"", ^{
            it(@"should run this test", ^{
                [[@"hello" should] equal:@"no"];
            });
        });
    });
});

SPEC_END
