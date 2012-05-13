//
//  DebtManagerAppDelegate.m
//  DebtManager
//
//  Created by Darshan Sanghani on 8/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DebtManagerAppDelegate.h"
#import "DebterDoc.h"
#import "RootViewController.h"


@implementation DebtManagerAppDelegate


@synthesize window=_window;

@synthesize navigationController=_navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //adding some default values to the table ot test. not relevant.
    DebterDoc *bug1 = [[[DebterDoc alloc] initWithTitle:@"John Doe1" rating:4 owesU:5 uOwes:6 thumbImage:[UIImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[UIImage imageNamed:@"potatoBug.jpg"]] autorelease];
    DebterDoc *bug2 = [[[DebterDoc alloc] initWithTitle:@"John Doe2" rating:3 owesU:0 uOwes:0 thumbImage:[UIImage imageNamed:@"centipedeThumb.jpg"] fullImage:[UIImage imageNamed:@"centipede.jpg"]] autorelease];
    DebterDoc *bug3 = [[[DebterDoc alloc] initWithTitle:@"John Doe3" rating:5 owesU:0 uOwes:6 thumbImage:[UIImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[UIImage imageNamed:@"wolfSpider.jpg"]] autorelease];
    DebterDoc *bug4 = [[[DebterDoc alloc] initWithTitle:@"John Doe4" rating:1 owesU:5 uOwes:0 thumbImage:[UIImage imageNamed:@"ladybugThumb.jpg"] fullImage:[UIImage imageNamed:@"ladybug.jpg"]] autorelease];
    NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, nil];
    RootViewController *rootController = (RootViewController *) [_navigationController.viewControllers objectAtIndex:0];
    rootController.debters = bugs;
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [super dealloc];
}

@end
