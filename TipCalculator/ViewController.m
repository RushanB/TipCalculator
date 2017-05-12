//
//  ViewController.m
//  TipCalculator
//
//  Created by Rushan on 2017-05-12.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_billAmountTextField becomeFirstResponder];
    _billAmountTextField.delegate = self;
}

- (IBAction)calculateTip:(id)sender {
    float tip =
    [self.view endEditing: YES];
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    BOOL shouldReturn = textField.text.length > 0;
    if(shouldReturn){
        [textField resignFirstResponder];
        
    }
    return shouldReturn;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"Tip entered: %0.2f", textField.text.floatValue);
    text.Field.text = textField.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
