//
//  DebterData.m
//  DebtManager
//
//  Created by Darshan Sanghani on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DebterData.h"


@implementation DebterData
@synthesize title = _title;
@synthesize rating = _rating;
@synthesize owesUser = _owesUser;
@synthesize userOwes = _userOwes;

-(id) initWithTitle:(NSString *)title rating:(float)rating owesU:(float)owesUser Uowes:(float)userOwes{
    if((self = [super init])){
        _title = [title copy];
        _rating = rating;
        _owesUser = owesUser;
        _userOwes = userOwes;
    }
    return self;
}

- (void) dealloc {
    [_title release];
    _title = nil;
    [super dealloc];
}
@end
