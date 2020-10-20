//
//  main.m
//  ObjectOrientedObjectiveC
//
//  Created by Jean-Jacques Reibel on 10/20/20.
//  Copyright © 2020 Jean Reibel. All rights reserved.
//
/*
 MIT License

 Copyright (c) 2020 Jean-Jacques François Reibel

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

#import <Foundation/Foundation.h>

@interface Car:NSObject{
    @public
    int wheels;
    int doors;
    int cylinders;
}

- (int)addWheels:(int)wheelsIn;
- (int)addDoors:(int)doorsIn;
- (int)addCylinders:(int)CylindersIn;
- (int)deleteWheels:(int)wheelsIn;
- (int)deleteDoors:(int)doorsIn;
- (int)deleteCylinders:(int)CylindersIn;

@end

@implementation Car
-(id) initWithParts:(int)wheelsIn andDoors:(int)doorsIn andCylinders:(int)cylindersIn{
    if (![super init])
        return nil;
    wheels = wheelsIn;
    doors = doorsIn;
    cylinders = cylindersIn;
    return self;
}

-(int)addWheels:(int)wheelsIn
{
    self->wheels += wheelsIn;
    return self->wheels;
}
- (int)addDoors:(int)doorsIn
{
    self->doors += doorsIn;
    return self->doors;
}
- (int)addCylinders:(int)cylindersIn
{
    self->cylinders += cylindersIn;
    return self->cylinders;
}
- (int)deleteWheels:(int)wheelsIn
{
    self->wheels -= wheelsIn;
    return self->wheels;
}
- (int)deleteDoors:(int)doorsIn
{
    self->doors -= doorsIn;
    return self->doors;
}
- (int)deleteCylinders:(int)cylindersIn
{
    self->cylinders -= cylindersIn;
    return self->cylinders;
}

@end

int main () {
   NSLog(@"Creating car. \n");
    Car *subaru = [[Car alloc]initWithParts:4 andDoors:4 andCylinders:4];
   NSLog(@"Wheels check:  %d\n", subaru->wheels);
   NSLog(@"Doors check:  %d\n", subaru->doors);
   NSLog(@"Cylinders check:  %d\n", subaru->cylinders);
   NSLog(@"\n");
   NSLog(@"Adding wheel directly to car object.\n");
   subaru->wheels = 5;
   NSLog(@"Wheels check:  %d\n", subaru->wheels);
   NSLog(@"Doors check:  %d\n", subaru->doors);
   NSLog(@"Cylinders check:  %d\n", subaru->cylinders);
   NSLog(@"\n");
   NSLog(@"Removing wheel using class method.\n");
   [subaru deleteWheels:1 ];
   NSLog(@"Wheels check:  %d\n", subaru->wheels);
   NSLog(@"Doors check:  %d\n", subaru->doors);
   NSLog(@"Cylinders check:  %d\n", subaru->cylinders);
   NSLog(@"\n");
 
   NSLog(@"Max value is : %d\n", subaru->wheels );
   return 0;
}
