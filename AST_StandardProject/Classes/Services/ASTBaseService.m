//
//  ASTWSCaller.m
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/5/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import "ASTBaseService.h"
#import "AFNetworking.h"

@interface ASTBaseService() {

}

@property (nonatomic, strong) AFHTTPRequestOperationManager *operationsManager;

@end

@implementation ASTBaseService

+ (ASTBaseService *)shared {
    static ASTBaseService *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc] init];
        shared.operationsManager = [AFHTTPRequestOperationManager manager];
    });
    
    return shared;
}

- (void)GET:(NSString *)path parameters:(NSDictionary *)parameters completion:(ASTServiceCompletion)completion {
    [self.operationsManager GET:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (completion) {
            completion(YES, responseObject, nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (completion) {
            completion(NO, nil, error);
        }
    }];
}

- (void)POST:(NSString *)path parameters:(NSDictionary *)parameters completion:(ASTServiceCompletion)completion {
    [self.operationsManager POST:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (completion) {
            completion(YES, responseObject, nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (completion) {
            completion(NO, nil, error);
        }
    }];
}

@end
