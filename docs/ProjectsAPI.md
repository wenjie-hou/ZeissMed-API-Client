# ProjectsAPI

All URIs are relative to *http://ios2021zeissmed.ase.in.tum.de/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectsBusinessUnits**](ProjectsAPI.md#projectsbusinessunits) | **GET** /projects/business-units/ | 
[**projectsFilter**](ProjectsAPI.md#projectsfilter) | **GET** /projects/filter/ | 
[**projectsGates**](ProjectsAPI.md#projectsgates) | **GET** /projects/{id}/gates/ | 
[**projectsList**](ProjectsAPI.md#projectslist) | **GET** /projects/ | 
[**projectsManagers**](ProjectsAPI.md#projectsmanagers) | **GET** /projects/managers/ | 
[**projectsRead**](ProjectsAPI.md#projectsread) | **GET** /projects/{id}/ | 
[**projectsSearch**](ProjectsAPI.md#projectssearch) | **GET** /projects/search/ | 


# **projectsBusinessUnits**
```swift
    open class func projectsBusinessUnits(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Get all Bussiness units name that shows in at least one project

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ProjectsAPI.projectsBusinessUnits() { (response, error) in
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

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsFilter**
```swift
    open class func projectsFilter(sap: String? = nil, status: String? = nil, bu: String? = nil, manager: String? = nil, completion: @escaping (_ data: [Project]?, _ error: Error?) -> Void)
```



Filter the Project by the given parameter Possible filters:     - Manager id (list of ids joined by ',', e.g. '1,2,3,4')     - status (list of status joined by ',')     - business units name (list of names joined by ',')     - sap_number

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sap = "sap_example" // String | filter region or project by sap number (optional)
let status = "status_example" // String | filter region or project by status list (optional)
let bu = "bu_example" // String | filter region or project by business_unit (optional)
let manager = "manager_example" // String | filter region or project by manager id (optional)

ProjectsAPI.projectsFilter(sap: sap, status: status, bu: bu, manager: manager) { (response, error) in
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

# **projectsGates**
```swift
    open class func projectsGates(id: Int, completion: @escaping (_ data: [Gate]?, _ error: Error?) -> Void)
```



Get all gates from a given project

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this project.

ProjectsAPI.projectsGates(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this project. | 

### Return type

[**[Gate]**](Gate.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsList**
```swift
    open class func projectsList(completion: @escaping (_ data: InlineResponse200?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ProjectsAPI.projectsList() { (response, error) in
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

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsManagers**
```swift
    open class func projectsManagers(completion: @escaping (_ data: [ManagerSimplified]?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ProjectsAPI.projectsManagers() { (response, error) in
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

# **projectsRead**
```swift
    open class func projectsRead(id: Int, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this project.

ProjectsAPI.projectsRead(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this project. | 

### Return type

[**Project**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsSearch**
```swift
    open class func projectsSearch(keyword: String, completion: @escaping (_ data: [Project]?, _ error: Error?) -> Void)
```



Return all regions if their names match the given keywords

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keyword = "keyword_example" // String | search keyword for product/project name

ProjectsAPI.projectsSearch(keyword: keyword) { (response, error) in
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

[**[Project]**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

