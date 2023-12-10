//
//  RMService.swift
//  RickAndMorty
//
//  Created by Lovedeep on 11/12/23.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init(){}
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void ) {
        
    }
}
