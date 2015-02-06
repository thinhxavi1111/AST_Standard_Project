//
//  ASTNavigationController.m
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/4/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import "ASTNavigationController.h"

@interface ASTNavigationController ()

@end

@implementation ASTNavigationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Customize Navigation Bar at here
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Public methods

- (void)showNavigationBar {
    self.navigationBarHidden = NO;
}

- (void)hideNavigationBar {
    self.navigationBarHidden = YES;
}
@end
