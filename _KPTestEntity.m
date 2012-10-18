// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KPTestEntity.m instead.

#import "_KPTestEntity.h"

@implementation KPTestEntityID
@end

@implementation _KPTestEntity

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"KPTestEntity" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"KPTestEntity";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"KPTestEntity" inManagedObjectContext:moc_];
}

- (KPTestEntityID*)objectID {
	return (KPTestEntityID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic property01;






@dynamic property010;






@dynamic property011;






@dynamic property012;






@dynamic property013;






@dynamic property014;






@dynamic property015;






@dynamic property016;






@dynamic property017;






@dynamic property018;






@dynamic property019;






@dynamic property02;






@dynamic property020;






@dynamic property03;






@dynamic property04;






@dynamic property05;






@dynamic property06;






@dynamic property07;






@dynamic property08;






@dynamic property09;










@end
