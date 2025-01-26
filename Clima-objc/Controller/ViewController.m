//
//  ViewController.m
//  Clima-objc
//
//  Created by makis mantzinos on 26/1/25.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *conditionImageView;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.searchTextField.delegate = self;
    
}
- (IBAction)searchPressed:(UIButton *)sender {
    NSString *textField = self.searchTextField.text;
    [self.searchTextField endEditing:YES];
    NSLog(@"%@", textField);
//    [self textFieldShouldReturn:self.searchTextField];
}

- (BOOL) textFieldShouldReturn: (UITextField *) textField {
    [self.searchTextField endEditing:YES];
    NSLog(@"%@", self.searchTextField.text);
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    if (textField.text.length != 0) {
        return YES; // Prevent ending editing
    } else {
        [self.searchTextField setPlaceholder:@"Type something"];
        return NO;
    }
}
-(void) textFieldDidEndEditing:(UITextField *)textField {
//    self.searchTextField.text = @"";
    [self.searchTextField setText:@""];
}



@end
