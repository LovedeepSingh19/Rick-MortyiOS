//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Lovedeep on 11/12/23.
//

import Foundation

final class RMRequest {
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    
    private let pathComponents: [String]
    
    private let queryParameters: [URLQueryItem]
    
    private var URLString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if(!pathComponents.isEmpty){
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if(!queryParameters.isEmpty){
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL?{
        return URL(string: URLString)
    }
    
    public let httpMethod = "GET"
    
    public init(endpoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
