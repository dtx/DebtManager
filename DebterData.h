//
//  DebterData.h
//  DebtManager
//
//  Created by Darshan Sanghani on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DebterData : NSObject {
    NSString * _title;
    float _rating;
    float _owesUser;
    float _userOwes;
}

@property (copy) NSString * title;
@property float rating;
@property float owesUser;
@property float userOwes;

- (id) initWithTitle:(NSString *) title rating:(float)rating owesU:(float)owesUser Uowes:(float)userOwes;
@end
