//
//  ASTTabbarController.m
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/4/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import "ASTTabbarController.h"
#import "FirstVC.h"

@interface ASTTabbarController ()

@end

@implementation ASTTabbarController

#pragma mark - Instance

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUpViewControllers];
    }
    return self;
}

- (void)setUpViewControllers {
    FirstVC *viewController1 = [[FirstVC alloc] init];
    FirstVC *viewController2 = [[FirstVC alloc] init];
    
    ASTNavigationController *navigationController1 = [[ASTNavigationController alloc] initWithRootViewController:viewController1];
    ASTNavigationController *navigationController2 = [[ASTNavigationController alloc] initWithRootViewController:viewController2];
    if (navigationController1 && navigationController2) {
        self.viewControllers = @[navigationController1, navigationController2];
    }
}

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Public methods

- (void)showTabbar {
    self.tabBar.hidden = NO;
}

- (void)hideTabbar {
    self.tabBar.hidden = YES;
}

@end
