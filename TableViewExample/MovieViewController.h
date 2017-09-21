//
//  MovieViewController.h
//  TableViewExample
//
//  Created by Kareem Sabri on 2017-09-21.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieViewController : UIViewController
@property (strong, nonatomic) Movie *movie;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *coverImage;

@end
