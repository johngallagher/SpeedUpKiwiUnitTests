#import "Kiwi.h"

@class KPApplicationStatus;
@class KPSyncTextGenerator;

@interface KPSyncTextGeneratorTestCase : KWTestCase {
    NSDate *today;
    KPApplicationStatus *status;
    KPSyncTextGenerator *generator;
}

@end
