//
//  CityViewController.m
//  Weather
//
//  Created by Yasmin Ahmad on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"


@interface CityViewController ()



//City is the property is the type and 'city' is the particular one for each instance (ie Vancouver, Helsinki) 

@end

@implementation CityViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor purpleColor]; 
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.view addSubview:label]; 
    label.text = [@(self.city.temperature) stringValue];
    label.textColor = [UIColor whiteColor];
    label.frame = CGRectMake(200, 200, 700, 700);
    [label sizeToFit];
    
    UIButton *moreDetails = [[UIButton alloc] initWithFrame:CGRectMake(200, 550, 300, 150)];
    [moreDetails setTitle:@"More Details" forState:UIControlStateNormal];
    [moreDetails addTarget:self action:@selector(showWeatherDetails:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIImage *image = [UIImage imageNamed:self.city.weatherPic];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.frame = CGRectMake(175, 350, 100, 100);
    [self.view addSubview:imageView];
    
    
//    UIImage *weatherPic = [[UIImage alloc] init];
//    [self.view addSubview:weatherPic];
//    weatherPic.imageAsset = 
//    weatherPic  = UIImage (frame:CGRectMake(10, 50, 100, 300));
//    weatherPic.image = UIImage(named:"image.jpg")
//    self.view.addSubview(imageView)
//    
    [self.view addSubview:moreDetails];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showWeatherDetails:(id)sender

{
    DetailedViewController *dvc = [[DetailedViewController alloc]init];
    
    dvc.city = self.city;
    
    
    [self.navigationController pushViewController:dvc animated:YES];
    
    
    
    
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
