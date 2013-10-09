//
//  FlagsViewController.h
//  table-view
//
//  Created by Patsicha Tongteeka on 10/9/56 BE.
//  Copyright (c) 2556 Patsicha Tongteeka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlagsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) NSString *flagImageName;
@property (weak, nonatomic) NSString *flagName;
@end
