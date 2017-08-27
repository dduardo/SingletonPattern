//
//  MyManager.m
//  SingletonPattern
//
//  Created by DuardoSantiago on 27/08/17.
//  Copyright © 2017 DuardoSantiago. All rights reserved.
//

#import "MyManager.h"

@implementation MyManager

@synthesize property;
static MyManager *sharedMyManager = nil;

// Constants
NSString *const KDefaultProperty = @"Default Property Value";

#pragma mark Singleton Methods

+ (id)sharedManager{
    @synchronized (self) {
        if (sharedMyManager == nil) {
            sharedMyManager = [[self alloc] init];
        }
    }
    return sharedMyManager;
}

+ (id)sharedManager:(NSString *)someProperty{
    @synchronized (self) {
        if (sharedMyManager == nil) {
            sharedMyManager = [[self alloc] initWithProperty:someProperty];
        }
    }
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        property = KDefaultProperty;
    }
    return self;
}

- (id)initWithProperty:(NSString *)someProperty {
    self = [super init];
    if (self = [super init]) {
        property = someProperty;
    }
    return self;
}

@end
