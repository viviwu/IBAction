//
//  ViewController.m
//  IBAction
//
//  Created by viviwu on 2014/7/6.
//  Copyright © 2014年 viviwu. All rights reserved.
//

#import "ViewController.h"
#import "XWView.h"
#import "WXView.h"
#import "OweView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet XWView *myView;
@property (strong, nonatomic) WXView * codeView;

@end

@implementation ViewController

- (IBAction)doSomething:(id)sender {
    NSLog(@"BB----%s", __func__);
}


- (IBAction)dodo:(id)sender {
    NSLog(@"DD++++%s", __func__);
}

- (IBAction)helloVivi:(id)sender {
    NSLog(@"456:%s", __func__);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.codeView = [[NSBundle mainBundle]loadNibNamed:@"WXView" owner:self options:nil].lastObject;
    [self.codeView setCenter:self.view.center];
    [self.view addSubview:self.codeView];
 
    OweView * view = [[NSBundle mainBundle]loadNibNamed:@"OweView" owner:self options:nil].lastObject;
    [view setCenter:CGPointMake(self.view.center.x, self.view.center.y+200)];
    [self.view addSubview:view];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
