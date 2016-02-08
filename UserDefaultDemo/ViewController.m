//
//  ViewController.m
//  UserDefaultDemo
//
//  Created by Jeevan Pandey on 28/01/16.
//  Copyright (c) 2016 Atlogys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SaveInfo:(id)sender {
    NSString *name = self.NameField.text ;
    NSString *pass = self.PassField.text ;
    [[NSUserDefaults standardUserDefaults ]  setValue:name forKey:@"userName"] ;
    [[NSUserDefaults standardUserDefaults ]  setValue:pass forKey:@"PassWord"] ;
    [[ NSUserDefaults standardUserDefaults] synchronize ] ;
    
}
- (IBAction)getValue:(id)sender {
    
    NSString *k = [[NSUserDefaults standardUserDefaults] valueForKey:@"userName"];
    NSString *p =  [[NSUserDefaults standardUserDefaults] valueForKey:@"PassWord"]; ;
    
    if (k && p) {
        
        self.ResulName.text = k ;
        self.ResulPass.text = p ;
    }

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
    
}





@end
