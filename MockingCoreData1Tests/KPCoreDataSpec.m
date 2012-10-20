#import "Kiwi.h"
#import "KPTestEntity.h"

SPEC_BEGIN(KPCoreDataSpec)

describe(@"KPCoreDataSpec", ^{
    __block KPTestEntity *entity;
    describe(@"#", ^{
        beforeEach(^{
            NSArray *allObjects = [KPTestEntity allObjects];
            for (KPTestEntity *thisObject in allObjects) {
                [thisObject deleteEntity];
            }
            [[NSManagedObjectContext contextForCurrentThread] reset];
        });
        context(@"with setProperty010", ^{
            beforeEach(^{
                NSLog(@"A");
                entity = [KPTestEntity object];
                [entity setProperty010:@"setProperty010"];
                NSLog(@"B");
            });
            it(@"should have the property", ^{
                NSLog(@"1");
                [[[entity property010] should] equal:@"setProperty010"];
            });
            it(@"should have the correct contactenated string", ^{
                NSLog(@"1");
                [[[entity concatenatedString] should] equal:@"setProperty010"];
            });
            it(@"should be the only entity in the managed object context", ^{
                NSLog(@"1");
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty09", ^{
            beforeEach(^{
                NSLog(@"C");
                entity = [KPTestEntity object];
                [entity setProperty09:@"setProperty09"];
                NSLog(@"Då");
            });
            it(@"should have the property", ^{
                NSLog(@"1");
                [[[entity property09] should] equal:@"setProperty09"];
            });
            it(@"should have the correct contactenated string", ^{
                NSLog(@"1");
                [[[entity concatenatedString] should] equal:@"setProperty09"];
            });
            it(@"should be the only entity in the managed object context", ^{
                NSLog(@"1");
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty08", ^{
            beforeEach(^{
                entity = [KPTestEntity object];
                [entity setProperty08:@"setProperty08"];
            });
            it(@"should have the property", ^{
                [[[entity property08] should] equal:@"setProperty08"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty08"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty07", ^{
            beforeEach(^{
                entity = [KPTestEntity object];
                [entity setProperty07:@"setProperty07"];
            });
            it(@"should have the property", ^{
                [[[entity property07] should] equal:@"setProperty07"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty07"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty06", ^{
            beforeEach(^{
                entity = [KPTestEntity object];
                [entity setProperty06:@"setProperty06"];
            });
            it(@"should have the property", ^{
                [[[entity property06] should] equal:@"setProperty06"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty06"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty05", ^{
            beforeEach(^{
                entity = [KPTestEntity object];
                [entity setProperty05:@"setProperty05"];
            });
            it(@"should have the property", ^{
                [[[entity property05] should] equal:@"setProperty05"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty05"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty04", ^{
            beforeEach(^{
                entity = [KPTestEntity object];
                [entity setProperty04:@"setProperty04"];
            });
            it(@"should have the property", ^{
                [[[entity property04] should] equal:@"setProperty04"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty04"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty03", ^{
            beforeEach(^{
                entity = [KPTestEntity object];
                [entity setProperty03:@"setProperty03"];
            });
            it(@"should have the property", ^{
                [[[entity property03] should] equal:@"setProperty03"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty03"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty02", ^{
            beforeEach(^{
                entity = [KPTestEntity object];
                [entity setProperty02:@"setProperty02"];
            });
            it(@"should have the property", ^{
                [[[entity property02] should] equal:@"setProperty02"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty02"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntity allObjects] should] haveCountOf:1];
            });
        });
    });
});

SPEC_END
