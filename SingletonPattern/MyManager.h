//
//  MyManager.h
//  SingletonPattern
//
//  Created by DuardoSantiago on 27/08/17.
//  Copyright © 2017 DuardoSantiago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyManager : NSObject{
    NSString *property;
}

@property (nonatomic, retain) NSString *property;

+ (id)sharedManager;
+ (id)sharedManager:(NSString *)someProperty;

@end
