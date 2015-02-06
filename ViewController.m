//
//  ViewController.m
//  DBMarcador
//
//  Created by Elizabeth Martínez Gómez on 04/02/15.
//  Copyright (c) 2015 Elizabeth Martínez Gómez. All rights reserved.
//

#import "ViewController.h"
#import "MarcadorDatabase.h"
#import "MarcadorInfo.h"
#import "Variables.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)btnStart:(id)sender {
    countTime = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(starCountTime:) userInfo:nil repeats:YES];
    self.btnPush.hidden = NO;
    
    self.lblCountClick.text=0;
    countClick = 0;
    
}

- (IBAction)btnPush:(id)sender {
    countClick = countClick +1;
    self.lblCountClick.text =[[NSNumber numberWithInt:countClick]stringValue];

    
}




-(void)starCountTime:(NSTimer *) countTime {
    
    i=i+1;
    self.lblTime.text = [[NSNumber numberWithInt:i]stringValue];
    if (i == 5) {
        self.lblTime.text=@"Tu tiempo se termino";
        [countTime invalidate];
        countTime = nil;
        i=1;
        self.btnPush.hidden = YES;
        
        NSDate *date = [NSDate date];
        NSDateFormatter *timeFormatter = [[NSDateFormatter alloc] init];
        timeFormatter.dateFormat = @"YYYY-mm-dd HH:mm:ss";
        NSString *timeString = [timeFormatter stringFromDate:date];
        
        NSLog(@"marcador: %@ ", self.lblCountClick.text);
        NSLog(@"fecha hora: %@ ", timeString);
        
        resMarcador = [self.lblCountClick.text intValue];
        resFecha = timeString;
        MarcadorDatabase * obje = [[MarcadorDatabase alloc] init];
        
        [obje marcadorInsert];
    }
}


@end
