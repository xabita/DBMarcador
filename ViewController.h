//
//  ViewController.h
//  DBMarcador
//
//  Created by Elizabeth Martínez Gómez on 04/02/15.
//  Copyright (c) 2015 Elizabeth Martínez Gómez. All rights reserved.
//

#import <UIKit/UIKit.h>

NSTimer *countTime;
int i;
int countClick;
NSDate *date;


@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblTime;
@property (strong, nonatomic) IBOutlet UILabel *lblCountClick;

@property (strong, nonatomic) IBOutlet UIButton *bntStart;
@property (strong, nonatomic) IBOutlet UIButton *btnPush;
@property (strong, nonatomic) IBOutlet UIButton *btnScore;
@property (strong, nonatomic) IBOutlet UIButton *btnLista;

- (IBAction)btnStart:(id)sender;
- (IBAction)btnPush:(id)sender;

@end

