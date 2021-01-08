# MonthlyDataAPI

All URIs are relative to *http://ios2021zeissmed.ase.in.tum.de/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**monthlyDataList**](MonthlyDataAPI.md#monthlydatalist) | **GET** /monthly-data/ | 
[**monthlyDataRead**](MonthlyDataAPI.md#monthlydataread) | **GET** /monthly-data/{id}/ | 


# **monthlyDataList**
```swift
    open class func monthlyDataList(completion: @escaping (_ data: [MonthlyData]?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


MonthlyDataAPI.monthlyDataList() { (response, error) in
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

[**[MonthlyData]**](MonthlyData.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **monthlyDataRead**
```swift
    open class func monthlyDataRead(id: Int, completion: @escaping (_ data: MonthlyData?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this monthly data.

MonthlyDataAPI.monthlyDataRead(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this monthly data. | 

### Return type

[**MonthlyData**](MonthlyData.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

