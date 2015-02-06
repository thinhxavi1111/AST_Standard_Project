//
//  ASTService.h
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/5/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASTService : NSObject

+ (id)shared;

#pragma mark - Public methods

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password completion:(void(^)(BOOL success, NSDictionary *data, NSError *error))completion;

@end
