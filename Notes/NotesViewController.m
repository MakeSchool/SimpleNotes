//
//  NotesViewController.m
//  Notes
//
//  Created by Benjamin Encz on 07/03/14.
//  Copyright (c) 2014 Benjamin Encz. All rights reserved.
//

#import "NotesViewController.h"
#import "Note.h"
#import "NoteDetailViewController.h"

@interface NotesViewController ()

@end

@implementation NotesViewController


- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self myInitCode];
    }
    
    return self;
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundle {
    self = [super initWithNibName:nibName bundle:nibBundle];
    
    if (self) {
        [self myInitCode];
    }
    
    return self;
}

- (void)myInitCode {
    self.notes = [NSMutableArray array];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddNote"]) {
        Note *newNote = [[Note alloc] init];
        [self.notes addObject:newNote];
        NoteDetailViewController *noteDetailViewController = (NoteDetailViewController *) segue.destinationViewController;
        noteDetailViewController.displayedNote = newNote;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.notes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NotesCell"];
    cell.textLabel.text = [self.notes[indexPath.row] title];
    
    return cell;
}

@end
