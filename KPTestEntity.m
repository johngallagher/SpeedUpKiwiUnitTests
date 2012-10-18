#import "KPTestEntity.h"

@implementation KPTestEntity

// Custom logic goes here.

-(void)addProperty:(NSMutableArray *)properties key:(NSString *)key {
    if ([self valueForKey:key])
        [properties addObject:[self valueForKey:key]];
}

-(void)addProperties:(NSMutableArray *)properties {
    NSArray *propertyNames = [NSArray arrayWithObjects:
                                          @"property01",
                                          @"property02",
                                          @"property03",
                                          @"property04",
                                          @"property05",
                                          @"property06",
                                          @"property07",
                                          @"property08",
                                          @"property09",
                                          @"property010",
                                          @"property011",
                                          @"property012",
                                          @"property013",
                                          @"property014",
                                          @"property015",
                                          @"property016",
                                          @"property017",
                                          @"property018",
                                          @"property019",
                                          nil];
    for (NSString *thisPropertyName in propertyNames) {
        [self addProperty:properties key:thisPropertyName];
    }
}

-(NSString *)concatenatedString {
    NSMutableArray *properties = [NSMutableArray array];
    [self addProperties:properties];
    return [properties componentsJoinedByString:@","];
}

@end
