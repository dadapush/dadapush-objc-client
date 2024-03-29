#import <Foundation/Foundation.h>
#import "DaDaPushObject.h"

/**
* DaDaPush Public API
* DaDaPush: Real-time Notifications App Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.
*
* The version of the OpenAPI document: v1
* Contact: contacts@dadapush.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "DaDaPushMessageObject.h"
@protocol DaDaPushMessageObject;
@class DaDaPushMessageObject;



@protocol DaDaPushResultOfMessageObject
@end

@interface DaDaPushResultOfMessageObject : DaDaPushObject


@property(nonatomic) NSNumber* code;

@property(nonatomic) DaDaPushMessageObject* data;

@property(nonatomic) NSString* errmsg;

@end
