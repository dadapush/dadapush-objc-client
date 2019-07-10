# DaDaPushDaDaPushMessageApi

All URIs are relative to *https://www.dadapush.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMessage**](DaDaPushDaDaPushMessageApi.md#createmessage) | **POST** /api/v1/message | push Message to a Channel
[**deleteMessage**](DaDaPushDaDaPushMessageApi.md#deletemessage) | **DELETE** /api/v1/message/{messageId} | delete a Channel Message
[**getMessage**](DaDaPushDaDaPushMessageApi.md#getmessage) | **GET** /api/v1/message/{messageId} | get a Channel Message
[**getMessages**](DaDaPushDaDaPushMessageApi.md#getmessages) | **GET** /api/v1/messages | get Message List


# **createMessage**
```objc
-(NSURLSessionTask*) createMessageWithBody: (DaDaPushMessagePushRequest*) body
    xChannelToken: (NSString*) xChannelToken
        completionHandler: (void (^)(DaDaPushResultOfMessagePushResponse* output, NSError* error)) handler;
```

push Message to a Channel

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```objc

DaDaPushMessagePushRequest* body = [[DaDaPushMessagePushRequest alloc] init]; // body
NSString* xChannelToken = @"xChannelToken_example"; // see: https://www.dadapush.com/channel/list (optional)

DaDaPushDaDaPushMessageApi*apiInstance = [[DaDaPushDaDaPushMessageApi alloc] init];

// push Message to a Channel
[apiInstance createMessageWithBody:body
              xChannelToken:xChannelToken
          completionHandler: ^(DaDaPushResultOfMessagePushResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DaDaPushDaDaPushMessageApi->createMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DaDaPushMessagePushRequest***](DaDaPushMessagePushRequest.md)| body | 
 **xChannelToken** | **NSString***| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**DaDaPushResultOfMessagePushResponse***](DaDaPushResultOfMessagePushResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessage**
```objc
-(NSURLSessionTask*) deleteMessageWithMessageId: (NSNumber*) messageId
    xChannelToken: (NSString*) xChannelToken
        completionHandler: (void (^)(DaDaPushResult* output, NSError* error)) handler;
```

delete a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```objc

NSNumber* messageId = @56; // messageId
NSString* xChannelToken = @"xChannelToken_example"; // see: https://www.dadapush.com/channel/list (optional)

DaDaPushDaDaPushMessageApi*apiInstance = [[DaDaPushDaDaPushMessageApi alloc] init];

// delete a Channel Message
[apiInstance deleteMessageWithMessageId:messageId
              xChannelToken:xChannelToken
          completionHandler: ^(DaDaPushResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DaDaPushDaDaPushMessageApi->deleteMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **NSNumber***| messageId | 
 **xChannelToken** | **NSString***| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**DaDaPushResult***](DaDaPushResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessage**
```objc
-(NSURLSessionTask*) getMessageWithMessageId: (NSNumber*) messageId
    xChannelToken: (NSString*) xChannelToken
        completionHandler: (void (^)(DaDaPushResultOfMessageObject* output, NSError* error)) handler;
```

get a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```objc

NSNumber* messageId = @56; // messageId
NSString* xChannelToken = @"xChannelToken_example"; // see: https://www.dadapush.com/channel/list (optional)

DaDaPushDaDaPushMessageApi*apiInstance = [[DaDaPushDaDaPushMessageApi alloc] init];

// get a Channel Message
[apiInstance getMessageWithMessageId:messageId
              xChannelToken:xChannelToken
          completionHandler: ^(DaDaPushResultOfMessageObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DaDaPushDaDaPushMessageApi->getMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **NSNumber***| messageId | 
 **xChannelToken** | **NSString***| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**DaDaPushResultOfMessageObject***](DaDaPushResultOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessages**
```objc
-(NSURLSessionTask*) getMessagesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    xChannelToken: (NSString*) xChannelToken
        completionHandler: (void (^)(DaDaPushResultOfPageResponseOfMessageObject* output, NSError* error)) handler;
```

get Message List

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```objc

NSNumber* page = 1; // greater than 1 (default to @1)
NSNumber* pageSize = 10; // range is 1,50 (default to @10)
NSString* xChannelToken = @"xChannelToken_example"; // see: https://www.dadapush.com/channel/list (optional)

DaDaPushDaDaPushMessageApi*apiInstance = [[DaDaPushDaDaPushMessageApi alloc] init];

// get Message List
[apiInstance getMessagesWithPage:page
              pageSize:pageSize
              xChannelToken:xChannelToken
          completionHandler: ^(DaDaPushResultOfPageResponseOfMessageObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DaDaPushDaDaPushMessageApi->getMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| greater than 1 | [default to @1]
 **pageSize** | **NSNumber***| range is 1,50 | [default to @10]
 **xChannelToken** | **NSString***| see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**DaDaPushResultOfPageResponseOfMessageObject***](DaDaPushResultOfPageResponseOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

