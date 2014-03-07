//
//  NoteDetailViewController.h
//  Notes
//
//  Created by Benjamin Encz on 07/03/14.
//  Copyright (c) 2014 Benjamin Encz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Note;

@interface NoteDetailViewController : UIViewController

@property (nonatomic, strong) Note *displayedNote;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;

@end
