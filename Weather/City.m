//
//  Cities.m
//  Weather
//
//  Created by Yasmin Ahmad on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City


-(instancetype) initWithName:(NSString *)name andTemperature:(CGFloat )temperature andPrecipitation:(CGFloat)precipitation andcurrentTemp:(CGFloat)currentTemp andHumidity:(CGFloat)humidity andWeatherPic:(NSString *)weatherPic;
{
    self = [super init];
    
    //NSObject is parent, we are initializing to NSOBJect with [super init]
    
    if (self) {
        _name = name;
        _temperature = temperature;
        _precipitation = precipitation;
        _currentTemp = currentTemp;
        _humidity = humidity;
        _weatherPic = weatherPic; 
        
    }
    return self; 
}


@end

