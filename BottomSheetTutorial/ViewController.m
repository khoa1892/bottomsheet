//
//  ViewController.m
//  BottomSheetTutorial
//
//  Created by Khoa Mai on 5/4/19.
//  Copyright © 2019 Khoa Mai. All rights reserved.
//

#import "ViewController.h"
#import "BottomSheetVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self addBottomSheetView];
}

-(void) addBottomSheetView {
    BottomSheetVC *bottomSheet = [self.storyboard instantiateViewControllerWithIdentifier:@"BottomSheetVC"];
    [self addChildViewController:bottomSheet];
    [self.view addSubview:bottomSheet.view];
    
    CGFloat height = self.view.frame.size.height;
    CGFloat width = self.view.frame.size.width;
    
    bottomSheet.view.frame = CGRectMake(0, CGRectGetMaxY(self.view.frame), width, height);
}

@end
