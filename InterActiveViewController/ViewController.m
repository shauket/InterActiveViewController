//
//  ViewController.m
//  InterActiveViewController
//
//  Created by Muhammad, Shauket | RASIA on 20/1/20.
//  Copyright © 2020 Muhammad, Shauket | RASIA. All rights reserved.
//

#import "ViewController.h"
#import <HWPanModal/HWPanModal.h>
#import "ModelViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)openButtonPressed:(id)sender {
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ModelViewController * mvc = [story   instantiateViewControllerWithIdentifier:@"ModalViewController"] ;
    [self.navigationController presentPanModal:mvc completion:^{}];
}

@end
