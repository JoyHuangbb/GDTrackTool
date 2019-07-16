//
//  ViewController1.m
//  GDTrackToolDemo
//
//  Created by 黄彬彬 on 2019/7/16.
//  Copyright © 2019 黄彬彬. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"view1";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick
{
    ViewController2 *viewController = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
