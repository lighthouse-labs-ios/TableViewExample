//
//  MovieTableViewCell.h
//  TableViewExample
//
//  Created by Kareem Sabri on 2017-09-21.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieTableViewCell : UITableViewCell

@property (nonatomic,strong) Movie *movie;
@property (nonatomic,weak) IBOutlet UILabel *movieTitleLabel;
@property (nonatomic,weak) IBOutlet UIImageView *movieCoverImage;

-(MovieTableViewCell*)updateDisplay;

@end
