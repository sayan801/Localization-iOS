//
//  ViewController.m
//  iLikeIt
//
//  Created by Kauserali on 04/03/14.
//  Copyright (c) 2014 Raywenderlich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIButton *likeButton;
@property (nonatomic, weak) IBOutlet UILabel *salesCountLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *numberString = [numberFormatter stringFromNumber:@(10000)];
    _salesCountLabel.text = [NSString stringWithFormat:NSLocalizedString(@"Yesterday you sold %@ apps", nil), numberString];
    
    [_likeButton setTitle:NSLocalizedString(@"You like?", nil) forState:UIControlStateNormal];
    [_imageView setImage:[UIImage imageNamed:NSLocalizedString(@"imageName", nil)]];
}


- (IBAction)youLikeButtonPressed:(id)sender {
    if (_salesCountLabel.hidden == YES) {
        _salesCountLabel.hidden = NO;
        _imageView.hidden = NO;
        _salesCountLabel.alpha = 0;
        _imageView.alpha = 0;
        
        [UIView animateWithDuration:3 animations:^(){
            _salesCountLabel.alpha = 3;
            _imageView.alpha = 3;
        } completion:^(BOOL finished) {
            if (finished) {
                _salesCountLabel.hidden = YES;
                _imageView.hidden = YES;
            }
        }];
    }
}
@end
