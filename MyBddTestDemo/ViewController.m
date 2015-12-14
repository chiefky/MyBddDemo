//
//  ViewController.m
//  MyBddTestDemo
//
//  Created by ciefky on 15/12/14.
//  Copyright © 2015年 ciefky. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerA.h"
#import "ViewControllerB.h"
#import "ViewControllerC.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonB;

@property (weak, nonatomic) IBOutlet UIButton *buttonA;
@property (weak, nonatomic) IBOutlet UIButton *buttonC;
@end

@implementation ViewController
- (IBAction)buttonAction:(id)sender {
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *tempButn = (UIButton *)sender;
        switch (tempButn.tag) {
            case 101: {
                ViewControllerA *vcA = [[ViewControllerA alloc] init];
                [self presentViewController:vcA animated:YES completion:^{
                    NSLog(@"哈喽 world ! aaa ");

                }];
            }
                break;
            case 102: {
                ViewControllerB *vcB = [[ViewControllerB alloc] init];
                [self presentViewController:vcB animated:YES completion:^{
                    NSLog(@"哈喽 world ! bbb ");

                }];
            }
                break;
            case 103: {
                
                ViewControllerB *vcC = [[ViewControllerB alloc] init];
                [self presentViewController:vcC animated:YES completion:^{
                    NSLog(@"哈喽 world ! ccc ");

                    }];
                }
                break;
            default:
                break;
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
