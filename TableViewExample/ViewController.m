//
//  ViewController.m
//  TableViewExample
//
//  Created by Kareem Sabri on 2017-09-21.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "ViewController.h"
#import "Movie.h"
#import "MovieTableViewCell.h"
#import "MovieViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray<Movie*>* movies;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Movie *rushHour = [[Movie alloc]initWithTitle:@"Rush Hour" andCover:[UIImage imageNamed:@"rushhour"]];
    self.movies = @[rushHour];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    Movie *movie = (Movie*)sender;
    if ([segue.identifier isEqualToString:@"goToMovie"]) {
        MovieViewController *movieViewController = segue.destinationViewController;
        movieViewController.movie = movie;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieTableViewCell" forIndexPath:indexPath];
    cell.movie = self.movies[indexPath.row];
    return [cell updateDisplay];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Movie *movie = self.movies[indexPath.row];
    [self performSegueWithIdentifier:@"goToMovie" sender:movie];
}



@end
