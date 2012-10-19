@class KPApplicationStatus;

static NSString *const kSyncBarOfflineText = @"Internet connection offline";

static NSString *const kSyncBarLoadingMoreText = @"Loading More...";

@interface KPSyncTextGenerator : NSObject {
    KPApplicationStatus *_status;
}

-(id)initWithStatus:(KPApplicationStatus *)status;

+(id)generatorWithStatus:(KPApplicationStatus *)status;

-(NSString *)generate;

@end
