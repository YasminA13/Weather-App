//
//  Cities.h
//  Weather
//
//  Created by Yasmin Ahmad on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property NSString *name;
@property CGFloat temperature;
@property CGFloat precipitation;
@property CGFloat currentTemp;
@property CGFloat humidity;
@property NSString *weatherPic; 


-(instancetype) initWithName:(NSString *)name andTemperature:(CGFloat )temperature andPrecipitation:(CGFloat)precipitaton andcurrentTemp:(CGFloat)currentTemp andHumidity:(CGFloat)humidity andWeatherPic:(NSString *)weatherPic;


@end
