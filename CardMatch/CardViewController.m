//
//  CardViewController.m
//  RPGOverview
//
//  Created by mike on 3/10/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import "CardViewController.h"

@interface CardViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardViewController

- (IBAction)flipCard:(UIButton *)sender {
    PlayingDeckCard *pdc = [[PlayingDeckCard alloc] init];
    
    if (sender.isSelected) {
        //[sender setSelected:NO];
        //sender.titleLabel.text = [NSString stringWithFormat:@"%@", [pdc.drawRandomCard contents]];
        //NSLog(@"%@", sender.titleLabel.text);
        sender.selected = NO;

       
    } else {
//        [sender setSelected:YES];
        sender.selected = YES;

    }
    //sender.selected = !sender.isSelected;
    self.flipCount++;
    
    [sender setTitle:[pdc.drawRandomCard contents]forState:NO];
//    [sender setTitle:@"" forState:YES];

    
    
    //self.flipLabel.text = [NSString stringWithFormat:@"Flip Counts: %d", self.flipCount];
}

-(void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
//    self.flipLabel.text = [NSString stringWithFormat:@"Flip Counts: %d", self.flipCount];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //_currentDeck = [[PlayingDeckCard alloc] init];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
