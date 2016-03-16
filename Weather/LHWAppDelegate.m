//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"



@implementation LHWAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    City *vancouver = [[City alloc]initWithName:@"Vancouver" andTemperature:12 andPrecipitation:89 andcurrentTemp:12 andHumidity:2 andWeatherPic:@"rain.png"];
    City *helsinki = [[City alloc]initWithName:@"Helsinki" andTemperature:2 andPrecipitation:56 andcurrentTemp:2 andHumidity:12 andWeatherPic:@"cloudy.png"];
    City *karachi = [[City alloc]initWithName:@"Karachi" andTemperature:33 andPrecipitation:0 andcurrentTemp:33 andHumidity:66 andWeatherPic:@"clear-day.png"];
    City *shenzhen = [[City alloc]initWithName:@"Shenzhen" andTemperature:23 andPrecipitation:21 andcurrentTemp:23 andHumidity:0 andWeatherPic:@"clear-night.png"];
    City *doha = [[City alloc]initWithName:@"Doha" andTemperature:44 andPrecipitation:0 andcurrentTemp:44 andHumidity:77 andWeatherPic:@"Sunny.png"];
    
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    
    
    CityViewController *vancouverVC = [[CityViewController alloc]init];
    vancouverVC.title = vancouver.name;
    vancouverVC.city = vancouver;
    
    CityViewController *helsinkiVC = [[CityViewController alloc]init];
    helsinkiVC.title = helsinki.name;
    helsinkiVC.city = helsinki;
    
    CityViewController *karachiVC = [[CityViewController alloc]init];
    karachiVC.title = karachi.name;
    karachiVC.city = karachi;
    
    CityViewController *shenzhenVC =  [[CityViewController alloc] init];
    shenzhenVC.title = shenzhen.name;
    shenzhenVC.city = shenzhen;
    
    CityViewController *dohaVC =  [[CityViewController alloc] init];
    dohaVC.title = doha.name;
    dohaVC.city = doha;
    
    UINavigationController *vanNav = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    UINavigationController *helNav = [[UINavigationController alloc] initWithRootViewController:helsinkiVC];
    
    UINavigationController *karNav = [[UINavigationController alloc] initWithRootViewController:karachiVC];
    
    UINavigationController *shenNav = [[UINavigationController alloc] initWithRootViewController:shenzhenVC];
    
    UINavigationController *dohNav = [[UINavigationController alloc] initWithRootViewController:dohaVC];
    
    tabBar.viewControllers = @[dohNav, helNav, karNav, shenNav, vanNav];
    
    
    
    self.window.rootViewController = tabBar; 
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
