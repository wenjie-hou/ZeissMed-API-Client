# UsersAPI

All URIs are relative to *http://localhost:8000/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersFavoriteCreate**](UsersAPI.md#usersfavoritecreate) | **POST** /users/favorite | 
[**usersFavoriteDelete**](UsersAPI.md#usersfavoritedelete) | **DELETE** /users/favorite | 
[**usersProfileList**](UsersAPI.md#usersprofilelist) | **GET** /users/profile | 


# **usersFavoriteCreate**
```swift
    open class func usersFavoriteCreate(data: InlineObject, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Add or remove from favourite list for current user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let data = inline_object(type: "type_example", pk: 123) // InlineObject | 

UsersAPI.usersFavoriteCreate(data: data) { (response, error) in
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
 **data** | [**InlineObject**](InlineObject.md) |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersFavoriteDelete**
```swift
    open class func usersFavoriteDelete(data: InlineObject1, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Add or remove from favourite list for current user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let data = inline_object_1(type: "type_example", pk: 123) // InlineObject1 | 

UsersAPI.usersFavoriteDelete(data: data) { (response, error) in
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
 **data** | [**InlineObject1**](InlineObject1.md) |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersProfileList**
```swift
    open class func usersProfileList(completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```



Get detailed information of the current signed in user designed to fetch user favorite list

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


UsersAPI.usersProfileList() { (response, error) in
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

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

