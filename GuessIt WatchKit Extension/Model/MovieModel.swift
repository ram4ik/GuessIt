//
//  MovieModel.swift
//  GuessIt WatchKit Extension
//
//  Created by Ramill Ibragimov on 30.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import Foundation

struct MovieModel {
    
    var emoji: String
    var name: String
    
    static func getMovie() -> [MovieModel]{
        return [
            MovieModel(emoji: "🦇", name: "Batman"),
            MovieModel(emoji: "🦖🎢", name: "Jurassic Park"),
            MovieModel(emoji: "🏹👍", name: "Robin Hood"),
            MovieModel(emoji: "🧛‍♂️", name: "Dracula"),
        ]
    }
}
