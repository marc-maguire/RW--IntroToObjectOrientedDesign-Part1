//
//  Motorcycle.m
//  Vehicles
//
//  Created by Marc Maguire on 2017-05-06.
//  Copyright © 2017 Designated Nerd Software. All rights reserved.
//

#import "Motorcycle.h"

@implementation Motorcycle

#pragma mark - Init

-(instancetype)init {
    
    if (self = [super init]) {
        self.numberOfWheels = 2;
        self. powerSource = @"gas engine";
    }
    return self;
}

#pragma mark - Superclass Overrides
-(NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ Open throttle.", [self changeGears:@"Forward"]];
}

-(NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ Walk %@ backwards using feet.", [self changeGears:@"Neutral"], self.modelName];
}

-(NSString *)stopMoving
{
    return @"Squeeze brakes.";
}

-(NSString *)makeNoise
{
    return self.engineNoise;
}

@end
