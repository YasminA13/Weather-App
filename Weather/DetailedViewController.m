//
//  DetailedViewController.m
//  Weather
//
//  Created by Yasmin Ahmad on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"


@interface DetailedViewController ()


@end

@implementation DetailedViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    UILabel *labelDetailsPrecip = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.view addSubview:labelDetailsPrecip];
    NSString *precipString = [NSString stringWithFormat:@"Precipitation%%:   %.0f", self.city.precipitation];
    labelDetailsPrecip.text = precipString;
    labelDetailsPrecip.textColor = [UIColor whiteColor];
    labelDetailsPrecip.frame = CGRectMake(50, 100, 300, 150);
    [labelDetailsPrecip sizeToFit];
    
    [self.view addSubview:labelDetailsPrecip];

    
    UILabel *labelDetailsTemp = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.view addSubview:labelDetailsTemp];
    NSString *tempString = [NSString stringWithFormat:@"Current Temperature (Celcius): %.0f°", self.city.currentTemp];
    labelDetailsTemp.text = tempString;
    labelDetailsTemp.textColor = [UIColor whiteColor];
    labelDetailsTemp.frame = CGRectMake(50, 200, 300, 150);
    [labelDetailsTemp sizeToFit];

    [self.view addSubview:labelDetailsTemp];
    
    UILabel *labelDetailsHumid = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.view addSubview:labelDetailsHumid];
    NSString *humidString = [NSString stringWithFormat:@"Humidity%%: %.0f", self.city.humidity];
    labelDetailsHumid.text = humidString;
    labelDetailsHumid.textColor = [UIColor whiteColor];
    labelDetailsHumid.frame = CGRectMake(50, 300, 300, 150);
    [labelDetailsHumid sizeToFit];
    
    [self.view addSubview:labelDetailsHumid];

    
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
