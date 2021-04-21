//
//  MovieVc+presenterDelegate.swift
//  Movie_MVP
//
//  Created by Mahmoud Elattar on 4/18/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation
import SKActivityIndicatorView

extension MovieVC :MovieListPresenterDelegate{
    func showIndicator() {
          SKActivityIndicator.show()
    }
    
    func hideIndicator() {
      SKActivityIndicator.dismiss()
    }
    
    func fetchingDataSuccess() {
        movieTableView.reloadData()
    }
    
    func showError(error: String) {
        
    }
    
    func navigateToMovieDetailsScreen(movie: Movie) {
        
    }
    
    
}
