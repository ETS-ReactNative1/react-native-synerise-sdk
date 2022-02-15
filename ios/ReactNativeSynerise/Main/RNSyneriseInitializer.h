//
//  RNSyneriseInitializer.h
//  react-native-synerise-sdk
//
//  Created by Synerise
//  Copyright © 2021 Synerise. All rights reserved.
//

#import "ReactNativeSynerise.h"

NS_ASSUME_NONNULL_BEGIN

@interface RNSyneriseInitializer : NSObject

@property (copy, nonatomic, nullable, readwrite) NSString *clientApiKey;
@property (copy, nonatomic, nullable, readwrite) NSString *baseURL;
@property (assign, nonatomic, readwrite) BOOL debugModeEnabled;
@property (assign, nonatomic, readwrite) BOOL crashHandlingEnabled;

- (void)initializeSynerise;
- (void)syneriseInitialized;

@end

NS_ASSUME_NONNULL_END
