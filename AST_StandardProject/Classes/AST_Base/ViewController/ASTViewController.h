//
//  ASTViewController.h
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/4/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASTViewController : UIViewController

@property (nonatomic, weak) ASTTabbarController *tabbarVC;
@property (nonatomic, weak) ASTNavigationController *navigationVC;

- (void)setUpData;
- (void)setUpUI;

@end

