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
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(160, 160, 500, 500)];
    [self.view addSubview:label]; 
    label.text = [@(self.city.temperature) stringValue];
    label.textColor = [UIColor whiteColor];
    //label.frame = CGRectMake(170, 160, 500, 500);
    [label setFont:[UIFont systemFontOfSize:100]];
    label.text = [NSString stringWithFormat:@"%@°",[@(self.city.temperature) stringValue]];
    [label sizeToFit];
    
    
    
    UIButton *moreDetails = [[UIButton alloc] initWithFrame:CGRectMake(200, 550, 300, 150)];
    [moreDetails setTitle:@"More Details" forState:UIControlStateNormal];
    [moreDetails addTarget:self action:@selector(showWeatherDetails:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIImage *image = [UIImage imageNamed:self.city.weatherPic];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.frame = CGRectMake(175, 350, 100, 100);
    [self.view addSubview:imageView];
    
    
    [self.view addSubview:moreDetails];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
