#import "KPTestEntityNSObject.h"

@implementation KPTestEntityNSObject

@synthesize property01 = _property01;

@synthesize property010 = _property010;

@synthesize property011 = _property011;

@synthesize property012 = _property012;

@synthesize property013 = _property013;

@synthesize property014 = _property014;

@synthesize property015 = _property015;

@synthesize property016 = _property016;

@synthesize property017 = _property017;

@synthesize property018 = _property018;

@synthesize property019 = _property019;

@synthesize property02 = _property02;

@synthesize property020 = _property020;

@synthesize property03 = _property03;

@synthesize property04 = _property04;

@synthesize property05 = _property05;

@synthesize property06 = _property06;

@synthesize property07 = _property07;

@synthesize property08 = _property08;

@synthesize property09 = _property09;

+(NSArray *)allObjects {
    return [NSArray arrayWithObject:[KPTestEntityNSObject new]];
}

+(KPTestEntityNSObject *)object {
    return [[self alloc] init];
}

-(void)addProperty:(NSMutableArray *)properties key:(NSString *)key {
    if ([self valueForKey:key])
        [properties addObject:[self valueForKey:key]];
}

-(void)addProperties:(NSMutableArray *)properties {
    NSArray       *propertyNames = [NSArray arrayWithObjects:
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

-(void)deleteEntity {

}
@end