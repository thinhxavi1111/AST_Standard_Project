//
//  FirstVC.m
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/4/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import "FirstVC.h"
#import "ASTService.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [[ASTService shared] loginWithUserName:nil password:nil completion:^(BOOL success, NSDictionary *data, NSError *error) {
        
    }];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
