//
//  Movie.h
//  TableViewExample
//
//  Created by Kareem Sabri on 2017-09-21.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Movie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIImage *cover;

-(instancetype)initWithTitle:(NSString*)title andCover:(UIImage*)cover;

@end
