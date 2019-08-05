//
//  TopHeadlinesTableViewController.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "TopHeadlinesTableViewController.h"
#import "DataRepository.h"
#import "TopHeadlinesTableViewCell.h"
#import "ArticleViewController.h"

@interface TopHeadlinesTableViewController ()
@property (nonatomic, strong) NSMutableArray *articleArray;
@property (nonatomic, strong) DataRepository *dataRepository;
@end

@implementation TopHeadlinesTableViewController

@synthesize delegate;
NSString *cellId = @"TopHeadlinesTableViewCell";
NSString *segueId = @"articleSegue";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:cellId bundle:nil] forCellReuseIdentifier:cellId];
    self.dataRepository = [[DataRepository alloc] init];
    self.articleArray = self.dataRepository.articleArray;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.articleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TopHeadlinesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    // Configure the cell...
    Article *article = [self.articleArray objectAtIndex:indexPath.row];
    [cell configureWithArticle:article];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Article *article = [self.articleArray objectAtIndex:indexPath.row];
//    [self.delegate configureWithArticle:article];
    [self performSegueWithIdentifier:segueId sender:self];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:segueId]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ArticleViewController *articleViewController = segue.destinationViewController;
        [articleViewController configureWithArticle:[self.articleArray objectAtIndex:indexPath.row]];
    }
}

@end
