//
//  RootViewController.h
//  DebtManager
//
//  Created by Darshan Sanghani on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EditDebterViewController;

@interface RootViewController : UITableViewController {
    NSMutableArray *_debters;
    EditDebterViewController *_editDebterViewController;

}
@property (retain) NSMutableArray *debters;
@property (retain) EditDebterViewController * editDebterViewController;
@end
