//
//  MovieTableViewCell+Extention.swift
//  Movie_MVP
//
//  Created by Mahmoud Elattar on 4/18/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import UIKit
import SDWebImage

extension MovieTableViewCell :MovieTableViewCellDeledate{
    func displayMovieName(name: String) {
        movieName.text=name
    }
    
    func displayEMovieRating(rating: String) {
        movieRating.text=rating
    }
    
    func displayMovieImage(imageUrl: String) {
        imageView?.doenloadImage(url: imageUrl)
    }
 }

extension UIImageView{
   func doenloadImage(url:String){
        self.sd_setImage(with: URL(string: "url"), placeholderImage: UIImage(named: "movie_image"))
    }
}
