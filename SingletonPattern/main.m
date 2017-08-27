//
//  main.m
//  SingletonPattern
//
//  Created by DuardoSantiago on 27/08/17.
//  Copyright © 2017 DuardoSantiago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyManager.h"

// Constants
NSString *const KManagerProperty = @"some property to initiate";

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MyManager *sharedManager = [MyManager sharedManager:KManagerProperty];
        NSLog(@"sharedManager: %@",sharedManager.property);
        
    }
    return 0;
}
