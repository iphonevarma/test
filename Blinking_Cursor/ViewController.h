//
//  ViewController.h
//  Blinking_Cursor
//
//  Created by Paradigm on 12/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}
@property (retain, nonatomic) IBOutlet UITextField *DisplayDate;
-(void)touchesBegan:(NSSet*)trigger withEvent:(UIEvent*)event;

@end
