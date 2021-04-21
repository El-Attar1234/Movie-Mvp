//
//  RemoteDataSource.swift
//  Movie_MVP
//
//  Created by Mahmoud Elattar on 4/18/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation


protocol RemoteDataSourceProtocol {
    func getMovies(completion: @escaping (Result<[Movie]?, NSError>) -> Void)
}


class RemoteDataSource: MovieApi<RemoteDataSourceWrapper> , RemoteDataSourceProtocol {
    
    func getMovies(completion: @escaping (Result<[Movie]?, NSError>) -> Void) {
        self.fetchData(target: .getMovies, responseClass:[Movie].self) { (result) in
                  completion(result)
              }
    }
    
   
}
