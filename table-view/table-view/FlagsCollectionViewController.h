//
//  FlagsCollectionViewController.h
//  table-view
//
//  Created by Patsicha Tongteeka on 10/9/56 BE.
//  Copyright (c) 2556 Patsicha Tongteeka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>


@interface FlagsCollectionViewController : UICollectionViewController {
    NSArray *flagsPhotos;
    NSArray *tableData;
    BOOL shareEnabled;
    NSMutableArray *selectedFlagsArray;
}
@property (weak, nonatomic) IBOutlet UIBarButtonItem *shareButton;
- (IBAction)shareButtonTouched:(id)sender;

@end
