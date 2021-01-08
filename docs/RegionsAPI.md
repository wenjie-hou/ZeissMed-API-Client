# RegionsAPI

All URIs are relative to *http://ios2021zeissmed.ase.in.tum.de/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**regionsBusinessUnits**](RegionsAPI.md#regionsbusinessunits) | **GET** /regions/business-units/ | 
[**regionsFilter**](RegionsAPI.md#regionsfilter) | **GET** /regions/filter/ | 
[**regionsList**](RegionsAPI.md#regionslist) | **GET** /regions/ | 
[**regionsManagers**](RegionsAPI.md#regionsmanagers) | **GET** /regions/managers/ | 
[**regionsRead**](RegionsAPI.md#regionsread) | **GET** /regions/{id}/ | 
[**regionsSearch**](RegionsAPI.md#regionssearch) | **GET** /regions/search/ | 


# **regionsBusinessUnits**
```swift
    open class func regionsBusinessUnits(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```



Get all Bussiness units name that shows in at least one project

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RegionsAPI.regionsBusinessUnits() { (response, error) in
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

**[String]**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regionsFilter**
```swift
    open class func regionsFilter(sap: String? = nil, status: String? = nil, bu: String? = nil, manager: String? = nil, completion: @escaping (_ data: [Project]?, _ error: Error?) -> Void)
```



Filter the Region by the given parameter Possible filters:     - manager (list)     - status (list)     - business units name (list)     - sap_number

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sap = "sap_example" // String | filter region or project by sap number (optional)
let status = "status_example" // String | filter region or project by status list (optional)
let bu = "bu_example" // String | filter region or project by business_unit (optional)
let manager = "manager_example" // String | filter region or project by manager id (optional)

RegionsAPI.regionsFilter(sap: sap, status: status, bu: bu, manager: manager) { (response, error) in
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
 **sap** | **String** | filter region or project by sap number | [optional] 
 **status** | **String** | filter region or project by status list | [optional] 
 **bu** | **String** | filter region or project by business_unit | [optional] 
 **manager** | **String** | filter region or project by manager id | [optional] 

### Return type

[**[Project]**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regionsList**
```swift
    open class func regionsList(completion: @escaping (_ data: InlineResponse2001?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RegionsAPI.regionsList() { (response, error) in
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

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regionsManagers**
```swift
    open class func regionsManagers(completion: @escaping (_ data: [ManagerSimplified]?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RegionsAPI.regionsManagers() { (response, error) in
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

[**[ManagerSimplified]**](ManagerSimplified.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regionsRead**
```swift
    open class func regionsRead(id: Int, completion: @escaping (_ data: Region?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this region.

RegionsAPI.regionsRead(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this region. | 

### Return type

[**Region**](Region.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regionsSearch**
```swift
    open class func regionsSearch(keyword: String, completion: @escaping (_ data: [Region]?, _ error: Error?) -> Void)
```



Return all regions if their names match the given keywords

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keyword = "keyword_example" // String | search keyword for product/project name

RegionsAPI.regionsSearch(keyword: keyword) { (response, error) in
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
 **keyword** | **String** | search keyword for product/project name | 

### Return type

[**[Region]**](Region.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

