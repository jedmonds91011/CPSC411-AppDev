//
//  main.m
//  HelloWorld
//
//  Created by jedmonds91011 on 8/26/15.
//  Copyright (c) 2015 jedmonds91011. All rights reserved.
//

#import <Foundation/Foundation.h>

int main()
{
    /*NSLog(@"Please enter a string: ");
    NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
    NSData *inputData = [NSData dataWithData:[input availableData]];
    NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSLog(@"%@",inputString);
     */
    char* rawData;
    NSLog(@"Please enter a string: ");
    scanf("%s", rawData);
    
    /*NSString* inputData = [NSString stringWithFormat:@"%s",rawData];
    */
    
    NSString* inputData = [[NSString alloc] initWithCString:rawData encoding:NSUTF8StringEncoding];
    NSLog(inputData);
    

    
    return 0;
}

/*Class Notes

@interface Person : NSObject
 {
    NSString* _name;
    NSDate* _dob;
 }
  -(id) initWithName: (NSString*) aName dateOfBirth:(NSDate*_ dob) aDate;
  -(NSString*) name;
  -(void) setName:(NSString*) aName;
 
 @end;
 
 
 @implementation Person
 -(NSString*) name
 {
    return _name;
 }
 
 -(void) setName:(NSString*) aName
 {
    if(aName != _name)
    {
        NSString* tempName = _name;
        _name = [aName retain];
        [tempName release];
    }
 }
 -(id) initWithName: (NSString*) aName dateOfBirth:(NSDate*) aDate
 {
    self = [super init];//this initializes the NSObject by calling init, if I exist, then init myself and return
    if(self)
    {
        _name = [aName retain];
        -dob = [aDate retain];
    }
    return self;
 }
 
 @end
 
 
 #import "Person.h"
 #import <Foundation/Foundation.L>
 //Real main function
 //argc = count of arguments, argv[] is the list of parameters
 int main(int argc, char* argv[])
 {
    @autoreleasepool{
        Person* a = [[Person alloc] initWithName:@"Jack" dateofBirth:[NSDate date]];
        Person* b = [[Person alloc] initWithName:@"Jane" dateOfBirth:[NSDate date]];
        NSLog(@"%@", [a name]);
 }
 
 
 
 
 
 
 Person* p;
 p = [[Person alloc] 
    initWithName: @"Jane"
    dateOfBirth:[NSDate date]];
 
 Person* anotherPerson = [[Person alloc] 
    initWithName:@"NotJanet" 
    dateOfBirth:[NSDate date];
 
 
 
 //initWithName and dateOfBirth are functions
 //(NSString*) name and (NSDate*) dob are variables
 //(id) is a pointer to any object
 
 NSString* n = [p name];
 [p setName:@"Janet"];
 [anotherPerson setName:@"Janet"];
 
 
 //SSH key - ea:f6:fa:0f:fb:dc:dd:17:58:33:77:37:df:b7:6c:8b jedmonds91011@yahoo.com
 
 //other thing? ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCvRWi96BVrwA681MQ0IQ5splaMDem57Rl0TgG4ikmUi1oI/6RJBDFxrMzy9ZBM6uielUy8lvnmipKHlM+2WaNnsrlkIMT9HVLwf7wMJ/vEzFG7h9zxdsHqG4043p5a/+xg+IEcGHIFrocVeRja/6limjlp6ELQW3/fx5IDGbtM1C8dt6l3JDtI4XavPaLTi+2Oh0Y2CzoWt19ExKYNdVg9s3qf/qJ2fPpk/SDfT+NaSZaUYy0ibPn6tpLAh1UbB48oynkLONfWTdtcMeVD4kiaLRGDtcmDZlm/qTJuCWwOwazwR4tQUEr4QKQIws24+wKcdgqtvg3yUwu4bsOEG9KZ0iceSBEUQHd+MxZB0itSgCXGgaPQN44DjtHRbDgiz3Y1Z1l16mnCmhcgOEn/wSz7seIIwAGVZMAzt7p/N3Gdf154Z2mt+2sEJ9UOBIGohCDrbI/hdnlbIEc0AVEwR0/hDbSy7mXshv+knpq/YZ2ard0bjpKqWGxattQHqHBgfRTtcky3cEBQ1wSHUQO5KuQ+OB1iXTHbFuWPJk9GEod8zvjAGD1g/YsA3Zj5j0FYilx4ksjp8wZBv13gvk89n4Af42VcX8MYtYQq9Tq/GJOFEEQQeHtISeTCemcKgzOMPVlgWktQnOlq351lhox66HbGh5+txpVWNxKypxT8dt2FqQ== jedmonds91011@yahoo.com

*/