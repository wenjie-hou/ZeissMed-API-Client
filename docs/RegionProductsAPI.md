# RegionProductsAPI

All URIs are relative to *https://ios2021zeissmed.ase.in.tum.de/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**regionProductsCompare**](RegionProductsAPI.md#regionproductscompare) | **GET** /region-products/{id}/compare/ | 
[**regionProductsList**](RegionProductsAPI.md#regionproductslist) | **GET** /region-products/ | 
[**regionProductsRead**](RegionProductsAPI.md#regionproductsread) | **GET** /region-products/{id}/ | 


# **regionProductsCompare**
```swift
    open class func regionProductsCompare(id: Int, completion: @escaping (_ data: RegionProductWithProductName?, _ error: Error?) -> Void)
```



Get all regional products from one product family in all region with their region name for the region compare view. **important:** For the `region` attribute, only the name of the region is shown to avoid circular dependency

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this region product.

RegionProductsAPI.regionProductsCompare(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this region product. | 

### Return type

[**RegionProductWithProductName**](RegionProductWithProductName.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regionProductsList**
```swift
    open class func regionProductsList(completion: @escaping (_ data: [RegionProduct]?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RegionProductsAPI.regionProductsList() { (response, error) in
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

[**[RegionProduct]**](RegionProduct.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regionProductsRead**
```swift
    open class func regionProductsRead(id: Int, completion: @escaping (_ data: RegionProduct?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this region product.

RegionProductsAPI.regionProductsRead(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this region product. | 

### Return type

[**RegionProduct**](RegionProduct.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

