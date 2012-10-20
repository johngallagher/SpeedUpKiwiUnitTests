#import "Kiwi.h"
#import "KPTestEntityNSObject.h"

SPEC_BEGIN(KPCoreData2Spec)

describe(@"KPCoreData2Spec", ^{
    __block KPTestEntityNSObject *entity;
    describe(@"#", ^{
//        beforeEach(^{
//            NSArray *allObjects = [KPTestEntityNSObject allObjects];
//            for (KPTestEntityNSObject *thisObject in allObjects) {
//                [thisObject deleteEntity];
//            }
//            [[NSManagedObjectContext contextForCurrentThread] reset];
//
//        });
        context(@"with setProperty010", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty010:@"setProperty010"];
            });
            it(@"should have the property", ^{
                [[[entity property010] should] equal:@"setProperty010"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty010"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty09", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty09:@"setProperty09"];
            });
            it(@"should have the property", ^{
                [[[entity property09] should] equal:@"setProperty09"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty09"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty08", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty08:@"setProperty08"];
            });
            it(@"should have the property", ^{
                [[[entity property08] should] equal:@"setProperty08"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty08"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty07", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty07:@"setProperty07"];
            });
            it(@"should have the property", ^{
                [[[entity property07] should] equal:@"setProperty07"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty07"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty06", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty06:@"setProperty06"];
            });
            it(@"should have the property", ^{
                [[[entity property06] should] equal:@"setProperty06"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty06"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty05", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty05:@"setProperty05"];
            });
            it(@"should have the property", ^{
                [[[entity property05] should] equal:@"setProperty05"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty05"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty04", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty04:@"setProperty04"];
            });
            it(@"should have the property", ^{
                [[[entity property04] should] equal:@"setProperty04"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty04"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty03", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty03:@"setProperty03"];
            });
            it(@"should have the property", ^{
                [[[entity property03] should] equal:@"setProperty03"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty03"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
        context(@"with setProperty02", ^{
            beforeEach(^{
                entity = [KPTestEntityNSObject object];
                [entity setProperty02:@"setProperty02"];
            });
            it(@"should have the property", ^{
                [[[entity property02] should] equal:@"setProperty02"];
            });
            it(@"should have the correct contactenated string", ^{
                [[[entity concatenatedString] should] equal:@"setProperty02"];
            });
            it(@"should be the only entity in the managed object context", ^{
                [[[KPTestEntityNSObject allObjects] should] haveCountOf:1];
            });
        });
    });
});

SPEC_END
