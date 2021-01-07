# ActivitiesAPI

All URIs are relative to *https://ios2021zeissmed.ase.in.tum.de/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activitiesList**](ActivitiesAPI.md#activitieslist) | **GET** /activities/ | 
[**activitiesRead**](ActivitiesAPI.md#activitiesread) | **GET** /activities/{id}/ | 


# **activitiesList**
```swift
    open class func activitiesList(completion: @escaping (_ data: [Activity]?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ActivitiesAPI.activitiesList() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[Activity]**](Activity.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activitiesRead**
```swift
    open class func activitiesRead(id: Int, completion: @escaping (_ data: Activity?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this activity.

ActivitiesAPI.activitiesRead(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | A unique integer value identifying this activity. | 

### Return type

[**Activity**](Activity.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

