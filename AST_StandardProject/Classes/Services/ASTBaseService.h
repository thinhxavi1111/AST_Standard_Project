//
//  ASTWSCaller.h
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/5/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ASTServiceCompletion)(BOOL success, id response, NSError *error);

@interface ASTBaseService : NSObject

+ (ASTBaseService *)shared;

- (void)GET:(NSString *)path parameters:(NSDictionary *)parameters completion:(ASTServiceCompletion)completion;
- (void)POST:(NSString *)path parameters:(NSDictionary *)parameters completion:(ASTServiceCompletion)completion;

@end
