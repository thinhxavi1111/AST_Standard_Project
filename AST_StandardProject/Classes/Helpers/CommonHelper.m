//
//  CommonHelper.m
//  AST_StandardProject
//
//  Created by Ung Van Thinh on 2/5/15.
//  Copyright (c) 2015 Ung Van Thinh. All rights reserved.
//

#import "CommonHelper.h"

@implementation CommonHelper

+ (NSString *)trimString:(NSString *)string {
    return [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
