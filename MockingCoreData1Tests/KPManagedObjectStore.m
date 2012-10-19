#import "KPManagedObjectStore.h"

@implementation KPManagedObjectStore

-(NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    return _persistentStoreCoordinator;
}

-(void)createPersistentStoreCoordinator {
    NSURL                        *storeURL = [NSURL fileURLWithPath:self.pathToStoreFile];

    NSError              *error;
    NSManagedObjectModel *model            = [self managedObjectModel];
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];

    // Allow inferred migration from the original version of the application.
    NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
                                              [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption,
                                              [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];

    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSInMemoryStoreType configuration:nil URL:nil options:options error:&error]) {
        if (self.delegate != nil &&
            [self.delegate respondsToSelector:@selector(managedObjectStore:didFailToCreatePersistentStoreCoordinatorWithError:)]) {
            [self.delegate managedObjectStore:self didFailToCreatePersistentStoreCoordinatorWithError:error];
        } else {
            NSAssert(NO, @"Managed object store failed to create persistent store coordinator: %@", error);
        }
    }
}

@end