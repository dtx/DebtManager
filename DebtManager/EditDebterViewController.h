//
//  EditDebterViewController.h
//  DebtManager
//
//  Created by Darshan Sanghani on 8/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RateView.h"

@class DebterDoc;

@interface EditDebterViewController : UIViewController <UITextFieldDelegate, RateViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    
    DebterDoc *_debterDoc;
    UITextField *_titleField;
    UITextField *_owesU;
    UITextField *_uOwes;
    UIImageView * _imageView;
    RateView * _rateView;
    UIImagePickerController *_picker;
    
}

@property (retain) DebterDoc * debterDoc;
@property (retain) IBOutlet UITextField * titleField;
@property (retain) IBOutlet UITextField * owesU;
@property (retain) IBOutlet UITextField * uOwes;
@property (retain) IBOutlet UIImageView * imageView;
@property (retain) IBOutlet RateView *rateView;
@property (retain) UIImagePickerController * picker;

-(IBAction)titleFieldValueChanged:(id)sender;
-(IBAction)addPictureTapped:(id)sender;
-(IBAction)userOwesValueChanged:(id)sender;
-(IBAction)owesUserValueChanged:(id)sender;
@end
