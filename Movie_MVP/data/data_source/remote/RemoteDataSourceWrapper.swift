//
//  RemoteDataSourceWrapper.swift
//  Movie_MVP
//
//  Created by Mahmoud Elattar on 4/18/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation

enum RemoteDataSourceWrapper{
    case getMovies
}

extension RemoteDataSourceWrapper :ApiRequestWrapper{
    var baseURL: String {
        switch self {
        case .getMovies:
         return "https://api.androidhive.info"
        }
       
    }
    
    var endpoint: String {
        switch self {
        case .getMovies:
         return "/json/movies.json"
        }
    
    }
    
    var method: HttpMethod {
        switch self {
        case .getMovies:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .getMovies:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .getMovies:
         return nil
        }
    }
    
    
}
