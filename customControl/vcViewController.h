//
//  vcViewController.h
//  customControl
//
//  Created by Gaurav Amrutiya on 20/08/18.
//  Copyright © 2018 Gaurav Amrutiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface vcViewController : UIViewController <UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionVw;

@end
