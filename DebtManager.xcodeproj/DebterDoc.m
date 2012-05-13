//
//  DebterDoc.m
//  DebtManager
//
//  Created by Darshan Sanghani on 8/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DebterDoc.h"
#import "DebterData.h"

@implementation DebterDoc
@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

-(id) initWithTitle:(NSString *)title rating:(float)rating owesU:(float)owesUser uOwes:(float)userOwes thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage{
    if ((self = [super init])) {
        _data = [[DebterData alloc] initWithTitle:title rating:rating owesU:owesUser Uowes:userOwes];
        _thumbImage = [thumbImage retain];
        _fullImage  = [fullImage retain];
    }
    return self;
}

-(void) dealloc{
    [_data release];
    _data = nil;
    [_fullImage release ];
    _fullImage = nil;
    [_thumbImage release];
    _thumbImage = nil;
    [super dealloc];
}
@end
