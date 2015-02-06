//
//  ASTViewController.m
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/4/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import "ASTViewController.h"

@interface ASTViewController ()

@end

@implementation ASTViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabbarVC = (ASTTabbarController *)self.tabBarController;
    self.navigationVC = (ASTNavigationController *)self.navigationController;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Instance Methods

- (void)setUpData {
    
}

- (void)setUpUI {
    
}

@end
