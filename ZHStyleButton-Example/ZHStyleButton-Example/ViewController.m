//
//  ViewController.m
//  ZHStyleButton-Example
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ViewController.h"
#import <ZHStyleButton/ZHStyleButton.h>
#import "ZHStyleButtonOne.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)buttonAction:(UIButton *)sender {
    BOOL userInteractionEnabled = sender.tag == 100;
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[UIButton class]] && view.tag < 100) {
            view.userInteractionEnabled = userInteractionEnabled;
        }
    }
}



@end
