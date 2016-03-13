//
//  VUIColor.h
//  VWechat
//
//  Created by Vicky on 16/3/6.
//  Copyright © 2016年 Jobs. All rights reserved.
//

#ifndef VUIColor_h
#define VUIColor_h
 
#define UIColorFromRGBA(rgbValue, a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0f green:((float)((rgbValue & 0xFF00)  >> 8))/255.0f blue:((float)(rgbValue & 0xFF))/255.0f alpha:a]
#define UIColorFromRGB(rgbValue) UIColorFromRGBA(rgbValue, 1.0)

#endif
