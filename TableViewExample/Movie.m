//
//  Movie.m
//  TableViewExample
//
//  Created by Kareem Sabri on 2017-09-21.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title andCover:(UIImage *)cover {
    self = [super init];
    if (self) {
        _title = title;
        _cover = cover;
    }
    return self;
}

@end
