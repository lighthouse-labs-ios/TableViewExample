//
//  MovieTableViewCell.m
//  TableViewExample
//
//  Created by Kareem Sabri on 2017-09-21.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "MovieTableViewCell.h"

@implementation MovieTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (MovieTableViewCell*)updateDisplay {
    self.movieTitleLabel.text = self.movie.title;
    self.movieCoverImage.image = self.movie.cover;
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
