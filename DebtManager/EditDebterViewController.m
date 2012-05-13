//
//  EditDebterViewController.m
//  DebtManager
//
//  Created by Darshan Sanghani on 8/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EditDebterViewController.h"
#import "DebterData.h"
#import "DebterDoc.h"
#import "UIImageExtras.h"


@implementation EditDebterViewController

@synthesize debterDoc = _debterDoc;
@synthesize titleField = _titleField;
@synthesize owesU = _owesU;
@synthesize uOwes = _uOwes;
@synthesize imageView = _imageView;
@synthesize rateView = _rateView;
@synthesize picker = _picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
    [_debterDoc release];
    _debterDoc = nil;
    [_titleField release];
    _titleField = nil;
    [_owesU release];
    _owesU = nil;
    [_uOwes release];
    _uOwes = nil;
    [_imageView release];
    _imageView = nil;
    [_rateView release];
    _rateView = nil;
    [_picker release];
    _picker = nil;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
    self.picker = nil;

}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _rateView.notSelectedImage = [UIImage imageNamed:@"empty.png"];
    _rateView.halfSelectedImage = [UIImage imageNamed:@"half.png"];
    _rateView.fullSelectedImage = [UIImage imageNamed:@"full.png"];
    _rateView.editable = YES;
    _rateView.maxRating = 5;
    _rateView.delegate = self;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.titleField = nil;
    self.imageView = nil;
    self.rateView = nil;
    self.owesU = nil;
    self.uOwes = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) viewWillAppear:(BOOL)animated{
    _titleField.text = _debterDoc.data.title;
    _owesU.text = [NSString stringWithFormat:@"%f", _debterDoc.data.owesUser];
    _uOwes.text = [NSString stringWithFormat:@"%f", _debterDoc.data.userOwes];
    _rateView.rating = _debterDoc.data.rating;
    _imageView.image = _debterDoc.fullImage;
    [super viewWillAppear:animated];
}
- (IBAction)titleFieldValueChanged:(id)sender {
    _debterDoc.data.title = _titleField.text;
}
- (IBAction)owesUserValueChanged:(id)sender{
    _debterDoc.data.owesUser = [_owesU.text floatValue];
}
-(IBAction)userOwesValueChanged:(id)sender{
    _debterDoc.data.userOwes = [_uOwes.text floatValue];
}

#pragma mark UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark RateViewDelegate
-(void)rateView:(RateView *)rateView ratingDidChange:(float)rating{
    _debterDoc.data.rating = rating;
}

- (IBAction)addPictureTapped:(id)sender {
    if (_picker == nil) {   
        self.picker = [[[UIImagePickerController alloc] init] autorelease];
        _picker.delegate = self;
        _picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        _picker.allowsEditing = NO;    
    } 
    [self.navigationController presentModalViewController:_picker animated:YES];    
}

#pragma mark UIImagePickerControllerDelegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {    
    
    [self dismissModalViewControllerAnimated:YES];
    
    UIImage *fullImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage]; 
    UIImage *thumbImage = [fullImage imageByScalingAndCroppingForSize:CGSizeMake(44, 44)];
    _debterDoc.fullImage = fullImage;
    _debterDoc.thumbImage = thumbImage;
    _imageView.image = fullImage;
}
@end
