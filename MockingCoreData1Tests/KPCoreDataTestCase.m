#import "KPCoreDataTestCase.h"
#import "_KPTestEntity.h"
#import "KPTestEntity.h"

@implementation KPCoreDataTestCase

-(void)setUp {
    [super setUp];

    NSArray           *allObjects = [KPTestEntity allObjects];
    for (KPTestEntity *thisObject in allObjects) {
        [thisObject deleteEntity];
    }
    [[NSManagedObjectContext contextForCurrentThread] reset];

    NSLog(@"A");
    entity = [KPTestEntity object];
    NSLog(@"B");
}

-(void)itShouldHaveCorrectProperty10 {
    [entity setProperty010:@"setProperty010"];
    [[[entity property010] should] equal:@"setProperty010"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty10 {
    [entity setProperty010:@"setProperty010"];
    [[[entity concatenatedString] should] equal:@"setProperty010"];
}

-(void)itShouldHaveCorrectCountProperty10 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty9 {
    [entity setProperty09:@"setProperty09"];
    [[[entity property09] should] equal:@"setProperty09"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty9 {
    [entity setProperty08:@"setProperty09"];
    [[[entity concatenatedString] should] equal:@"setProperty09"];
}

-(void)itShouldHaveCorrectCountProperty9 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty8 {
    [entity setProperty09:@"setProperty08"];
    [[[entity property09] should] equal:@"setProperty08"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty8 {
    [entity setProperty08:@"setProperty08"];
    [[[entity concatenatedString] should] equal:@"setProperty08"];
}

-(void)itShouldHaveCorrectCountProperty8 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty7 {
    [entity setProperty07:@"setProperty07"];
    [[[entity property07] should] equal:@"setProperty07"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty7 {
    [entity setProperty07:@"setProperty07"];
    [[[entity concatenatedString] should] equal:@"setProperty07"];
}

-(void)itShouldHaveCorrectCountProperty7 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty6 {
    [entity setProperty06:@"setProperty06"];
    [[[entity property06] should] equal:@"setProperty06"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty5 {
    [entity setProperty05:@"setProperty05"];
    [[[entity concatenatedString] should] equal:@"setProperty05"];
}

-(void)itShouldHaveCorrectCountProperty5 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty4 {
    [entity setProperty04:@"setProperty04"];
    [[[entity property04] should] equal:@"setProperty04"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty4 {
    [entity setProperty04:@"setProperty04"];
    [[[entity concatenatedString] should] equal:@"setProperty04"];
}

-(void)itShouldHaveCorrectCountProperty4 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty3 {
    [entity setProperty03:@"setProperty03"];
    [[[entity property03] should] equal:@"setProperty03"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty3 {
    [entity setProperty03:@"setProperty03"];
    [[[entity concatenatedString] should] equal:@"setProperty03"];
}

-(void)itShouldHaveCorrectCountProperty3 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty2 {
    [entity setProperty02:@"setProperty02"];
    [[[entity property02] should] equal:@"setProperty02"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty2 {
    [entity setProperty02:@"setProperty02"];
    [[[entity concatenatedString] should] equal:@"setProperty02"];
}

-(void)itShouldHaveCorrectCountProperty2 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

-(void)itShouldHaveCorrectProperty1 {
    [entity setProperty01:@"setProperty01"];
    [[[entity property01] should] equal:@"setProperty01"];
}

-(void)itShouldHaveCorrectConcatenatedStringProperty1 {
    [entity setProperty01:@"setProperty01"];
    [[[entity concatenatedString] should] equal:@"setProperty01"];
}

-(void)itShouldHaveCorrectCountProperty1 {
    [[[KPTestEntity allObjects] should] haveCountOf:1];
}

@end