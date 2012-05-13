//
//  DebterDoc.h
//  DebtManager
//
//  Created by Darshan Sanghani on 8/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DebterData.h"


@interface DebterDoc : NSObject {
    DebterData * _data;
    UIImage * _thumbImage;
    UIImage * _fullImage;
    
}

@property (retain) DebterData * data;
@property (retain) UIImage * thumbImage;
@property (retain) UIImage * fullImage;

-(id) initWithTitle: (NSString*) title rating:(float)rating owesU:(float) owesUser uOwes: (float) userOwes thumbImage:(UIImage*)thumbImage fullImage:(UIImage*)fullImage;

@end
