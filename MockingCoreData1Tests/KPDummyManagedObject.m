#import "KPDummyManagedObject.h"

@implementation KPDummyManagedObject


-(id)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context {
    return [super init];
}



-(void)awakeFromFetch {
}

-(void)awakeFromInsert {
}

-(void)awakeFromSnapshotEvents:(NSSnapshotEventType)flags {
}

-(NSDictionary *)changedValues {
    return nil;
}

-(NSDictionary *)changedValuesForCurrentEvent {
    return nil;
}

-(NSDictionary *)committedValuesForKeys:(NSArray *)keys {
    return nil;
}

+(BOOL)contextShouldIgnoreUnmodeledPropertyChanges {
    return 0;
}

-(void)didAccessValueForKey:(NSString *)key {
    
}

-(void)didChangeValueForKey:(NSString *)key {
    
}

-(void)didChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects {
    
}

-(void)didSave {
}

-(void)didTurnIntoFault {
    
}

-(NSEntityDescription *)entity {
    return nil;
}

-(NSUInteger)faultingState {
    return 0;
}

-(BOOL)hasChanges {
    return 0;
}

-(BOOL)hasFaultForRelationshipNamed:(NSString *)key {
    return 0;
}


-(BOOL)isDeleted {
    return 0;
}

-(BOOL)isFault {
    return 0;
}

-(BOOL)isInserted {
    return 0;
}

-(BOOL)isUpdated {
    return 0;
}

-(NSManagedObjectContext *)managedObjectContext {
    return nil;
}

-(NSManagedObjectID *)objectID {
    return nil;
}

-(id)observationInfo {
    return nil;
}

-(void)prepareForDeletion {
    
}

-(id)primitiveValueForKey:(NSString *)key {
    return nil;
}

-(void)setObservationInfo:(id)inObservationInfo {
    
}

-(void)setPrimitiveValue:(id)value forKey:(NSString *)key {
    
}

-(void)setValue:(id)value forKey:(NSString *)key {
    
}

-(BOOL)validateForDelete:(NSError **)error {
    return 0;
}

-(BOOL)validateForInsert:(NSError **)error {
    return 0;
}

-(BOOL)validateForUpdate:(NSError **)error {
    return 0;
}

-(BOOL)validateValue:(id *)value forKey:(NSString *)key error:(NSError **)error {
    return 0;
}

-(id)valueForKey:(NSString *)key {
    return nil;
}

-(void)willAccessValueForKey:(NSString *)key {
    
}

-(void)willChangeValueForKey:(NSString *)key {
    
}

-(void)willChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects {
    
}

-(void)willSave {
    
}

-(void)willTurnIntoFault {
    
}

@end