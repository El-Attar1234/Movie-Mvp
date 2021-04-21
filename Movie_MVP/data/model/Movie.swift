//
//  Movie.swift
//  Movie_MVP
//
//  Created by Mahmoud Elattar on 4/18/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation

struct Movie : Codable {
     var title       : String
     var image       : String
     var rating      : Float
     var releaseYear : Int
     var genre       : [String]
    
}

