//
// GatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class GatesAPI {
    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func gatesList(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Gate]?,_ error: Error?) -> Void)) {
        gatesListWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /gates/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - returns: RequestBuilder<[Gate]> 
     */
    open class func gatesListWithRequestBuilder() -> RequestBuilder<[Gate]> {
        let path = "/gates/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Gate]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter id: (path) A unique integer value identifying this gate. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func gatesRead(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Gate?,_ error: Error?) -> Void)) {
        gatesReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /gates/{id}/
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter id: (path) A unique integer value identifying this gate. 
     - returns: RequestBuilder<Gate> 
     */
    open class func gatesReadWithRequestBuilder(id: Int) -> RequestBuilder<Gate> {
        var path = "/gates/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Gate>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
