//
//  YuansPerson.m
//  归档
//
//  Created by Stone袁 on 2017/1/13.
//  Copyright © 2017年 Stone. All rights reserved.
//

#import "YuansPerson.h"

@implementation YuansPerson


- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_age forKey:@"age"];
    [aCoder encodeObject:_grade forKey:@"grade"];

}
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{

    if (self = [super init]) {
        _name = [aDecoder decodeObjectForKey:@"name"];
        _age = [aDecoder decodeObjectForKey:@"age"];
        _grade = [aDecoder decodeObjectForKey:@"grade"];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@, age:%@ , grade:%@", _name, _age,_grade];
}

@end
