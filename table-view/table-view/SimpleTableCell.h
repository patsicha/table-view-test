//
//  SimpleTableCell.h
//  table-view
//
//  Created by Patsicha Tongteeka on 10/9/56 BE.
//  Copyright (c) 2556 Patsicha Tongteeka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
//@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;


@end
