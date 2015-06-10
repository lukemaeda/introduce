//
//  ViewController.m
//  introduce
//
//  Created by kunren10 on 2014/02/19.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 名前
@property (weak, nonatomic) IBOutlet UITextField *tffName;

// メッセージ
@property (weak, nonatomic) IBOutlet UILabel *lbMessage;

@end

@implementation ViewController

@synthesize tffName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 自己紹介ボタンアクション
// キーボードの表示制御 - resignFirstResponder と透明なボタン
// http://xcatsan2.blogspot.jp/2009/11/resignfirstresponder.html
- (IBAction)intoroduceMe:(id)sender {
    
    // 自己紹介文の表示
    // stringWithFormat 文字列を置き換える
    //
    self.lbMessage.text =
        [NSString stringWithFormat:@"私は、%@です。",self.tffName.text];
    
    // 自己紹介文の表示
    //self.lbMessage.text = self.tffName.text;
    
    // キーボードの表示制御
    [self.tffName resignFirstResponder];
    
}

@end
