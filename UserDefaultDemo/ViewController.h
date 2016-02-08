//
//  ViewController.h
//  UserDefaultDemo
//
//  Created by Jeevan Pandey on 28/01/16.
//  Copyright (c) 2016 Atlogys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *NameField;
@property (weak, nonatomic) IBOutlet UITextField *PassField;
- (IBAction)SaveInfo:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *ResulName;
@property (weak, nonatomic) IBOutlet UILabel *ResulPass;
- (IBAction)getValue:(id)sender;

@end

