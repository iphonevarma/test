//
//  ViewController.m
//  Blinking_Cursor
//
//  Created by Paradigm on 12/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize DisplayDate;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)touchesBegan:(NSSet*)trigger withEvent:(UIEvent*)event{
    UITouch *touch = [trigger anyObject];
    
    if(touch.view.tag == 1){
        CGRect pickerFrame = CGRectMake(0,220,320,216);
        UIDatePicker *pickDate = [[UIDatePicker alloc]initWithFrame:pickerFrame];
        
        [pickDate addTarget:self action:@selector(dateSelected:)forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:pickDate];}
}




-(void)dateSelected:(id)sender{
    
    NSDateFormatter *fmtDate = [[NSDateFormatter alloc] init];
    [fmtDate setDateFormat:@"yyyy/MM/dd" ];
    DisplayDate.text = [fmtDate stringFromDate:[sender date]];
}

- (void)viewDidUnload
{
    [self setDisplayDate:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [DisplayDate release];
    [super dealloc];
}
@end
