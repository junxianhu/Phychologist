//
//  ViewController.m
//  Phychologist
//
//  Created by cipher on 15/10/20.
//  Copyright © 2015年 com.lab1411.cipher. All rights reserved.
//

#import "ViewController.h"
#import "FaceViewController.h"
@interface ViewController ()
@property (nonatomic) int diagnosis;
@end



@implementation ViewController
@synthesize diagnosis=_diagnosis;

-(void)setAndShowDiagnosis:(int)diagnosis{
    self.diagnosis = diagnosis;
    [self performSegueWithIdentifier:@"showDiagnosis" sender:self];
}

//单独的子view
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    if ([segue.identifier isEqualToString:@"showDiagnosis"]) {
//        [segue.destinationViewController setHappiness:self.diagnosis];
//    }
//}

//每个button单独建立一个segue
//重新换了一个view界面，一直不执行该方法，原因是新的view中虽然三个button分别push了
//但是，这个新的view没有选择class，记住一定要选择viewController，一定要关联
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showDiagnosis"]) {
        [segue.destinationViewController setHappiness:self.diagnosis];
    }else if([segue.identifier isEqualToString:@"celebrity"]){
        [segue.destinationViewController setHappiness:80];
    }else if([segue.identifier isEqualToString:@"serious"]){
        [segue.destinationViewController setHappiness:20];
    }else if([segue.identifier isEqualToString:@"TV"]){
        [segue.destinationViewController setHappiness:50];
    }
}


//每个button，引出不同的调用参数
- (IBAction)flying {
    [self setAndShowDiagnosis:85];
    //segue
    //[self performSegueWithIdentifier:@"showDiagnosis" sender:self];
}
- (IBAction)apple {
    [self setAndShowDiagnosis:85];
}
- (IBAction)dragones {
    [self setAndShowDiagnosis:20];
}


-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return YES;
}


@end
