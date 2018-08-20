//
//  vcViewController.m
//  customControl
//
//  Created by Gaurav Amrutiya on 20/08/18.
//  Copyright © 2018 Gaurav Amrutiya. All rights reserved.
//

#import "vcViewController.h"
#import "propertyCellCollectionViewCell.h"
@interface vcViewController ()

@end

@implementation vcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_collectionVw registerNib:[UINib nibWithNibName:@"propertyCellCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"propertyCellID"];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    propertyCellCollectionViewCell *cell=(propertyCellCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"propertyCellID" forIndexPath:indexPath];
    if(indexPath.row%2==0)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self hideContainer:cell];
        });
    }
    else
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self showContainer:cell];
        });
    }
    return cell;
    
}

-(void) showContainer:(propertyCellCollectionViewCell *)cell
{
    cell.amenitiesVwHeightCon.active = NO;
    cell.amenitiesVw.hidden = NO;
    [cell layoutIfNeeded];
}
-(void) hideContainer:(propertyCellCollectionViewCell *)cell
{
    cell.amenitiesVwHeightCon.active = YES;
    cell.amenitiesVwHeightCon.constant = 0.0f;
    cell.amenitiesVw.hidden = YES;
    [cell layoutIfNeeded];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
