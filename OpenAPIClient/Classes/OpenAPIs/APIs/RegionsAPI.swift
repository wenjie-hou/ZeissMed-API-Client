//
// RegionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class RegionsAPI {
    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func regionsBusinessUnits(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        regionsBusinessUnitsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /regions/business-units/
     - Get all Bussiness units name that shows in at least one project
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - returns: RequestBuilder<[String]> 
     */
    open class func regionsBusinessUnitsWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/regions/business-units/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[String]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter sap: (query) filter region or project by sap number (optional)
     - parameter status: (query) filter region or project by status list (optional)
     - parameter bu: (query) filter region or project by business_unit (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func regionsFilter(sap: String? = nil, status: String? = nil, bu: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Project]?,_ error: Error?) -> Void)) {
        regionsFilterWithRequestBuilder(sap: sap, status: status, bu: bu).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /regions/filter/
     - Filter the Region by the given parameter Possible filters:     - status (list)     - business units name (list)     - sap_number
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter sap: (query) filter region or project by sap number (optional)
     - parameter status: (query) filter region or project by status list (optional)
     - parameter bu: (query) filter region or project by business_unit (optional)
     - returns: RequestBuilder<[Project]> 
     */
    open class func regionsFilterWithRequestBuilder(sap: String? = nil, status: String? = nil, bu: String? = nil) -> RequestBuilder<[Project]> {
        let path = "/regions/filter/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sap": sap?.encodeToJSON(), 
            "status": status?.encodeToJSON(), 
            "bu": bu?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[Project]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func regionsList(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineResponse2001?,_ error: Error?) -> Void)) {
        regionsListWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /regions/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - returns: RequestBuilder<InlineResponse2001> 
     */
    open class func regionsListWithRequestBuilder() -> RequestBuilder<InlineResponse2001> {
        let path = "/regions/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponse2001>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func regionsManagers(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [ManagerSimplified]?,_ error: Error?) -> Void)) {
        regionsManagersWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /regions/managers/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - returns: RequestBuilder<[ManagerSimplified]> 
     */
    open class func regionsManagersWithRequestBuilder() -> RequestBuilder<[ManagerSimplified]> {
        let path = "/regions/managers/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[ManagerSimplified]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter id: (path) A unique integer value identifying this region. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func regionsRead(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Region?,_ error: Error?) -> Void)) {
        regionsReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /regions/{id}/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter id: (path) A unique integer value identifying this region. 
     - returns: RequestBuilder<Region> 
     */
    open class func regionsReadWithRequestBuilder(id: Int) -> RequestBuilder<Region> {
        var path = "/regions/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Region>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter keyword: (query) search keyword for product/project name 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func regionsSearch(keyword: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Region]?,_ error: Error?) -> Void)) {
        regionsSearchWithRequestBuilder(keyword: keyword).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /regions/search/
     - Return all regions if their names match the given keywords
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter keyword: (query) search keyword for product/project name 
     - returns: RequestBuilder<[Region]> 
     */
    open class func regionsSearchWithRequestBuilder(keyword: String) -> RequestBuilder<[Region]> {
        let path = "/regions/search/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "keyword": keyword.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[Region]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}