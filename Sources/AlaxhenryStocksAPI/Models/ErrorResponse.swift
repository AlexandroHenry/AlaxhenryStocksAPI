//
//  File.swift
//  
//
//  Created by Seungchul Ha on 2022/10/29.
//

import Foundation

public struct ErrorResponse: Codable {
    
    public let code: String
    public let description: String
    
    public init(code: String, description: String) {
        self.code = code
        self.description = description
    }
}
