//
//  MovieListPresenter.swift
//  Movie_MVP
//
//  Created by Mahmoud Elattar on 4/18/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation

protocol MovieListPresenterDelegate : class {
    func showIndicator()
    func hideIndicator()
    func fetchingDataSuccess()
    func showError(error: String)
    func navigateToMovieDetailsScreen(movie: Movie)
}

protocol MovieTableViewCellDeledate : class{
    func displayMovieName(name: String)
    func displayEMovieRating(rating: String)
    func displayMovieImage(imageUrl :String)
}



class MovieListPresenter{
    private weak var view:MovieListPresenterDelegate!
    private var movies=[Movie]()
    
    init(view:MovieListPresenterDelegate) {
        self.view = view
    }
    func getMovies(){
        getMoviesFromNetwork()
    }
    
    private func getMoviesFromNetwork(){
        let remoteDatasource = RemoteDataSource()
     //   self.view.showIndicator()
        remoteDatasource.getMovies {[weak self] (result) in
            guard let self = self else{return}
       //     self.view.hideIndicator()
            switch result {
            case .success(let response):
                guard let movies = response else {return }
                self.movies=movies
                self.view.fetchingDataSuccess()
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
                print(error.code)
            }
        }
    }
    
    func getMoviesCount()->Int{
        return movies.count
    }
    
    func setupCell(cell:MovieTableViewCellDeledate ,index:Int){
        let movie=movies[index]
        cell.displayMovieName(name: movie.title)
        cell.displayEMovieRating(rating: String(movie.rating))
        cell.displayMovieImage(imageUrl: movie.image)
    }
    
    
}
