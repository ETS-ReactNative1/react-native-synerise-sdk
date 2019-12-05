//
//  NSDictionary+ReactNative.m
//  react-native-synerise-sdk
//
//  Created by Synerise
//  Copyright © 2018 Synerise. All rights reserved.
//

#import "NSDictionary+ReactNative.h"

NS_ASSUME_NONNULL_BEGIN

@implementation NSDictionary (ReactNative)

#pragma mark - Public

- (nullable NSString *)getStringForKey:(NSString *)key {
    return [self getObjectForKey:key properClass:NSString.class];
}

- (nullable NSNumber *)getNumberForKey:(NSString *)key {
    return [self getObjectForKey:key properClass:NSNumber.class];
}

- (nullable NSArray *)getArrayForKey:(NSString *)key {
    return [self getObjectForKey:key properClass:NSArray.class];
}

- (nullable NSDictionary *)getDictionaryForKey:(NSDictionary *)key {
    return [self getObjectForKey:key properClass:NSNumber.class];
}

- (NSInteger)getIntegerForKey:(NSString *)key {
    return [[self getObjectForKey:key properClass:NSNumber.class] integerValue];
}

- (double)getDoubleForKey:(NSString *)key {
    return [[self getObjectForKey:key properClass:NSNumber.class] doubleValue];
}

- (BOOL)getBoolForKey:(NSString *)key {
    return [[self getObjectForKey:key properClass:NSNumber.class] boolValue];
}

#pragma mark - Private

- (nullable id)getObjectForKey:(NSString *)key properClass:(Class)properClass {
    __nullable id object = [self objectForKey:key];
    
    if (object == nil) {
        return nil;
    }
    
    if ([object isKindOfClass:properClass] == NO) {
        return nil;
    }
    
    return object;
}

@end

NS_ASSUME_NONNULL_END
