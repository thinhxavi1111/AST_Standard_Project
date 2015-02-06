//
//  ASTService.m
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/5/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import "ASTService.h"
#import "ASTBaseService.h"

@implementation ASTService

+ (id)shared {
    static ASTService *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc] init];
    });
    
    return shared;
}

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password completion:(void (^)(BOOL, NSDictionary *, NSError *))completion {
    NSString *fullURI = @"https://api.soundcloud.com/oauth2/token";
    [[ASTBaseService shared] POST:fullURI parameters:nil completion:^(BOOL success, id response, NSError *error) {
        // Parse data at here

        if (completion) {
            completion(success, nil, error);
        }
    }];
}

@end
