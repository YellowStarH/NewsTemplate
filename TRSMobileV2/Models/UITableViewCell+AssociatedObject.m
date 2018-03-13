//
//  TableViewCell+AssociatedObject.m
//  TRSMobileV2
//
//  Created by  TRS on 16/4/7.
//  Copyright © 2016年  TRS. All rights reserved.
//

#import <objc/runtime.h>
#import "UITableViewCell+AssociatedObject.h"

@implementation UITableViewCell (AssociatedObject)

- (void)setDict:(NSDictionary * _Nonnull)dict {
    
    objc_setAssociatedObject(self, @"dict", dict, OBJC_ASSOCIATION_COPY);
}

- (NSDictionary * _Nonnull)dict {
    
    return objc_getAssociatedObject(self, @"dict");
}

- (void)setClickEvent:(void (^)(NSDictionary * _Nullable, NSInteger))clickEvent {

    objc_setAssociatedObject(self, @"clickEvent", clickEvent, OBJC_ASSOCIATION_COPY);
}

- (void (^)(NSDictionary * _Nullable, NSInteger))clickEvent {

    return objc_getAssociatedObject(self, @"clickEvent");
}

#pragma mark -
- (void)updateCell {}

@end