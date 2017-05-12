//
//  ViewController.m
//  TipCalculator
//
//  Created by Rushan on 2017-05-12.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,assign) CGFloat defaultTip;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.defaultTip = 0.15;

}

- (IBAction)calculateTip:(id)sender {
    float billAmount = [self.billAmountTextField.text floatValue];
    float tipAmount;
    if([self.tipPercentageTextField.text floatValue]){
        tipAmount = (billAmount * [self.tipPercentageTextField.text floatValue]);
    }else{
        tipAmount = (billAmount *self.defaultTip);
    }
    NSString *tip = [NSString stringWithFormat:@"Tip: $%0.2f", tipAmount];
    //NSLog(@"Tip: $%0.2f", tipAmount);
    self.tipAmountLabel.text = tip;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
