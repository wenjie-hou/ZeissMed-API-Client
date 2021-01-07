//
// ProjectsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ProjectsAPI {
    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsBusinessUnits(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        projectsBusinessUnitsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /projects/business-units/
     - Get all Bussiness units name that shows in at least one project
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - returns: RequestBuilder<Void> 
     */
    open class func projectsBusinessUnitsWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/projects/business-units/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter sap: (query) filter region or project by sap number (optional)
     - parameter status: (query) filter region or project by status list (optional)
     - parameter bu: (query) filter region or project by business_unit (optional)
     - parameter manager: (query) filter region or project by manager id (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsFilter(sap: String? = nil, status: String? = nil, bu: String? = nil, manager: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Project]?,_ error: Error?) -> Void)) {
        projectsFilterWithRequestBuilder(sap: sap, status: status, bu: bu, manager: manager).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /projects/filter/
     - Filter the Project by the given parameter Possible filters:     - Manager id (list of ids joined by ',', e.g. '1,2,3,4')     - status (list of status joined by ',')     - business units name (list of names joined by ',')     - sap_number
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter sap: (query) filter region or project by sap number (optional)
     - parameter status: (query) filter region or project by status list (optional)
     - parameter bu: (query) filter region or project by business_unit (optional)
     - parameter manager: (query) filter region or project by manager id (optional)
     - returns: RequestBuilder<[Project]> 
     */
    open class func projectsFilterWithRequestBuilder(sap: String? = nil, status: String? = nil, bu: String? = nil, manager: String? = nil) -> RequestBuilder<[Project]> {
        let path = "/projects/filter/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sap": sap?.encodeToJSON(), 
            "status": status?.encodeToJSON(), 
            "bu": bu?.encodeToJSON(), 
            "manager": manager?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[Project]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter id: (path) A unique integer value identifying this project. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsGates(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Gate]?,_ error: Error?) -> Void)) {
        projectsGatesWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /projects/{id}/gates/
     - Get all gates from a given project
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter id: (path) A unique integer value identifying this project. 
     - returns: RequestBuilder<[Gate]> 
     */
    open class func projectsGatesWithRequestBuilder(id: Int) -> RequestBuilder<[Gate]> {
        var path = "/projects/{id}/gates/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Gate]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsList(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: InlineResponse200?,_ error: Error?) -> Void)) {
        projectsListWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /projects/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - returns: RequestBuilder<InlineResponse200> 
     */
    open class func projectsListWithRequestBuilder() -> RequestBuilder<InlineResponse200> {
        let path = "/projects/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponse200>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsManagers(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [ManagerSimplified]?,_ error: Error?) -> Void)) {
        projectsManagersWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /projects/managers/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - returns: RequestBuilder<[ManagerSimplified]> 
     */
    open class func projectsManagersWithRequestBuilder() -> RequestBuilder<[ManagerSimplified]> {
        let path = "/projects/managers/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[ManagerSimplified]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter id: (path) A unique integer value identifying this project. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsRead(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Project?,_ error: Error?) -> Void)) {
        projectsReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /projects/{id}/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter id: (path) A unique integer value identifying this project. 
     - returns: RequestBuilder<Project> 
     */
    open class func projectsReadWithRequestBuilder(id: Int) -> RequestBuilder<Project> {
        var path = "/projects/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Project>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter keyword: (query) search keyword for product/project name 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func projectsSearch(keyword: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Project]?,_ error: Error?) -> Void)) {
        projectsSearchWithRequestBuilder(keyword: keyword).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /projects/search/
     - Return all regions if their names match the given keywords
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter keyword: (query) search keyword for product/project name 
     - returns: RequestBuilder<[Project]> 
     */
    open class func projectsSearchWithRequestBuilder(keyword: String) -> RequestBuilder<[Project]> {
        let path = "/projects/search/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "keyword": keyword.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[Project]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
