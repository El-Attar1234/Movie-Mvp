//
//  MovieVC.swift
//  Movie_MVP
//
//  Created by Mahmoud Elattar on 4/18/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import UIKit

class MovieVC: UIViewController {
    @IBOutlet weak var movieTableView: UITableView!
    var presenter:MovieListPresenter!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
    presenter=MovieListPresenter(view: self)
        presenter.getMovies()
    }
    

}
